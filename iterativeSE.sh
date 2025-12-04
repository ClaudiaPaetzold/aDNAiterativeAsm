
#!/bin/bash

source ~/miniconda3/etc/profile.d/conda.sh

# Configuration
#$1 - reads file
name="${1%.*}"

echo $name 

   # Single-end reads
REFERENCE="NC_00889_Hip_amph.fasta"           # Initial reference
MAX_ITER=20                     # Max iterations
THREADS=12
MAX_ITER=100


# Setup
mkdir -p iterations
cp "$REFERENCE" "iterations/${name}_0.fasta"

# Table to store mapped reads per iteration
MAPPED_TABLE="${name}_mapped_reads_per_iteration.tsv"
echo -e "iteration\tmapped_reads" > "$MAPPED_TABLE"

prev_mapped=0

for i in $(seq 0 $MAX_ITER); do
    echo "=== Iteration $i ==="

    REF="iterations/${name}_${i}.fasta"
	echo $REF
    OUTDIR="iterations/iteration_${i}"
    INDEX_PREFIX="bowtie2_index"
    mkdir -p "$OUTDIR"
    conda activate mapping
    # Build Bowtie2 index
    bowtie2-build "$REF" "$INDEX_PREFIX"
  # Map reads (single-end) and add read group info
    bowtie2 -x "$INDEX_PREFIX" -U "$1" -p $THREADS \
        --rg-id ITER${i} --very-sensitive -N 1 -L 12 \
        -S "$OUTDIR/${name}_mapped.sam"
    conda activate snps
    # Convert to BAM (name-sorted)
    samtools view -F4 -@ $THREADS -b "$OUTDIR/${name}_mapped.sam" | \
        samtools sort -@ $THREADS -n -o "$OUTDIR/${name}_mapped.queryname.bam"

    # Coordinate sort
    samtools sort -@ $THREADS -o "$OUTDIR/${name}_mapped.coord.bam" "$OUTDIR/${name}_mapped.queryname.bam"

    # Mark and remove duplicates
    samtools markdup -@ $THREADS -r "$OUTDIR/${name}_mapped.coord.bam" "$OUTDIR/${name}_mapped.dedup.bam"
    samtools index "$OUTDIR/${name}_mapped.dedup.bam"

    # Count mapped reads (exclude unmapped)
    current_mapped=$(samtools view -c -F 4 "$OUTDIR/${name}_mapped.dedup.bam")
    echo "Mapped reads (after dedup): $current_mapped"

    # Log to file
    echo -e "${i}\t${current_mapped}" >> "$MAPPED_TABLE"

    # Stop if no new reads mapped
    
    if [[ "$i" -ne 0 && "$current_mapped" -le "$prev_mapped" ]]; then
        echo "No new reads mapped. Iteration converged. Stopping."
        break
    fi

    prev_mapped=$current_mapped

    # Generate consensus from deduplicated BAM
    samtools consensus -d 3 -A -f fasta "$OUTDIR/${name}_mapped.dedup.bam" > "iterations/${name}_$((i+1)).fasta"
    conda deactivate
done

echo "✅ Iteration complete. Final consensus: iterations/${name}_${i}.fasta"
echo "📄 Mapped reads log saved to: $MAPPED_TABLE"
