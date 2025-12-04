# aDNAiterativeAsm
Assembly of Hippopotamus aDNA using iterative mapping<br/>
<br/>
###Usage
> iterativePE.sh [filename]*.fastq.gz<br/>
<br/>
<br/>
might return:<br/>
<br/>
>[filename]
>=== Iteration 0 ===
>iterations/[filename]_0.fasta
>Settings:
>  Output files: "bowtie2_index.*.bt2"
>  Line rate: 6 (line is 64 bytes)
>  Lines per side: 1 (side is 64 bytes)
>  Offset rate: 4 (one in 16)
>  FTable chars: 10
>  Strings: unpacked
>  Max bucket size: default
>  Max bucket size, sqrt multiplier: default
>  Max bucket size, len divisor: 4
>  Difference-cover sample period: 1024
>  Endianness: little
>  Actual local endianness: little
>  Sanity checking: disabled
>  Assertions: disabled
>  Random seed: 0
>  Sizeofs: void*:8, int:4, long:8, size_t:8
>Input files DNA, FASTA:
>  iterations/[filename]_0.fasta
>Reading reference sizes
>  Time reading reference sizes: 00:00:00
>Calculating joined length
>Writing header
>Reserving space for joined string
>Joining reference sequences
>  Time to join reference sequences: 00:00:00
>bmax according to bmaxDivN setting: 4101
>Using parameters --bmax 3076 --dcv 1024
>  Doing ahead-of-time memory usage test
>  Passed!  Constructing with these parameters: --bmax 3076 --dcv 1024
>Constructing suffix-array element generator
>Building DifferenceCoverSample
>  Building sPrime
>  Building sPrimeOrder
>  V-Sorting samples
>  V-Sorting samples time: 00:00:00
>  Allocating rank array
>  Ranking v-sort output
>  Ranking v-sort output time: 00:00:00
>  Invoking Larsson-Sadakane on ranks
>  Invoking Larsson-Sadakane on ranks time: 00:00:00
>  Sanity-checking and returning
>Building samples
>Reserving space for 12 sample suffixes
>Generating random suffixes
>QSorting 12 sample offsets, eliminating duplicates
>QSorting sample offsets, eliminating duplicates time: 00:00:00
>Multikey QSorting 12 samples
>  (Using difference cover)
>  Multikey QSorting samples time: 00:00:00
>Calculating bucket sizes
>Splitting and merging
>  Splitting and merging time: 00:00:00
>Avg bucket size: 16407 (target: 3075)
>Converting suffix-array elements to index image
>Allocating ftab, absorbFtab
>Entering Ebwt loop
>Getting block 1 of 1
>  No samples; assembling all-inclusive block
>  Sorting block of length 16407 for bucket 1
>  (Using difference cover)
>  Sorting block time: 00:00:00
>Returning block of 16408 for bucket 1
>Exited Ebwt loop
>fchr[A]: 0
>fchr[C]: 5372
>fchr[G]: 10066
>fchr[T]: 12355
>fchr[$]: 16407
>Exiting Ebwt::buildToDisk()
>Returning from initFromVector
>Wrote 4200035 bytes to primary EBWT file: bowtie2_index.1.bt2
>Wrote 4108 bytes to secondary EBWT file: bowtie2_index.2.bt2
>Re-opening _in1 and _in2 as input streams
>Returning from Ebwt constructor
>Headers:
>    len: 16407
>    bwtLen: 16408
>    sz: 4102
>    bwtSz: 4102
>    lineRate: 6
>    offRate: 4
>    offMask: 0xfffffff0
>    ftabChars: 10
>    eftabLen: 20
>    eftabSz: 80
>    ftabLen: 1048577
>    ftabSz: 4194308
>    offsLen: 1026
>    offsSz: 4104
>    lineSz: 64
>    sideSz: 64
>    sideBwtSz: 48
>    sideBwtLen: 192
>    numSides: 86
>    numLines: 86
>    ebwtTotLen: 5504
>    ebwtTotSz: 5504
>    color: 0
>    reverse: 0
>Total time for call to driver() for forward index: 00:00:00
>Reading reference sizes
>  Time reading reference sizes: 00:00:00
>Calculating joined length
>Writing header
>Reserving space for joined string
>Joining reference sequences
>  Time to join reference sequences: 00:00:00
>  Time to reverse reference sequence: 00:00:00
>bmax according to bmaxDivN setting: 4101
>Using parameters --bmax 3076 --dcv 1024
>  Doing ahead-of-time memory usage test
>  Passed!  Constructing with these parameters: --bmax 3076 --dcv 1024
>Constructing suffix-array element generator
>Building DifferenceCoverSample
>  Building sPrime
>  Building sPrimeOrder
>  V-Sorting samples
>  V-Sorting samples time: 00:00:00
>  Allocating rank array
>  Ranking v-sort output
>  Ranking v-sort output time: 00:00:00
>  Invoking Larsson-Sadakane on ranks
>  Invoking Larsson-Sadakane on ranks time: 00:00:00
>  Sanity-checking and returning
>Building samples
>Reserving space for 12 sample suffixes
>Generating random suffixes
>QSorting 12 sample offsets, eliminating duplicates
>QSorting sample offsets, eliminating duplicates time: 00:00:00
>Multikey QSorting 12 samples
>  (Using difference cover)
>  Multikey QSorting samples time: 00:00:00
>Calculating bucket sizes
>Splitting and merging
>  Splitting and merging time: 00:00:00
>Avg bucket size: 16407 (target: 3075)
>Converting suffix-array elements to index image
>Allocating ftab, absorbFtab
>Entering Ebwt loop
>Getting block 1 of 1
>  No samples; assembling all-inclusive block
>  Sorting block of length 16407 for bucket 1
>  (Using difference cover)
>  Sorting block time: 00:00:00
>Returning block of 16408 for bucket 1
>Exited Ebwt loop
>fchr[A]: 0
>fchr[C]: 5372
>fchr[G]: 10066
>fchr[T]: 12355
>fchr[$]: 16407
>Exiting Ebwt::buildToDisk()
>Returning from initFromVector
>Wrote 4200035 bytes to primary EBWT file: bowtie2_index.rev.1.bt2
>Wrote 4108 bytes to secondary EBWT file: bowtie2_index.rev.2.bt2
>Re-opening _in1 and _in2 as input streams
>Returning from Ebwt constructor
>Headers:
>    len: 16407
>    bwtLen: 16408
>    sz: 4102
>    bwtSz: 4102
>    lineRate: 6
>    offRate: 4
>    offMask: 0xfffffff0
>    ftabChars: 10
>    eftabLen: 20
>    eftabSz: 80
>    ftabLen: 1048577
>    ftabSz: 4194308
>    offsLen: 1026
>    offsSz: 4104
>    lineSz: 64
>    sideSz: 64
>    sideBwtSz: 48
>    sideBwtLen: 192
>    numSides: 86
>    numLines: 86
>    ebwtTotLen: 5504
>    ebwtTotSz: 5504
>    color: 0
>    reverse: 1
>Total time for backward call to driver() for mirror index: 00:00:00
>Mapped reads (after dedup): 1151
>=== Iteration 1 ===
>iterations/[filename]_1.fasta
>...
>...
>Total time for backward call to driver() for mirror index: 00:00:00
>Mapped reads (after dedup): 10364
>No new reads mapped. Iteration converged. Stopping.
>✅ Iteration complete. Final consensus: iterations/[filename]_3.fasta
>📄 Mapped reads log saved to: [filen]_reads_per_iteration.tsv


###Information
Three scripts comprising bash commands and the mapper bowtie2 to map reads iteratively to create a consensus sequence and samtools to create a consensus sequence.<br/>
<br/>
Reads can be single-end (iterativeSE.sh), paired-end(iterative-PW.sh) or a mix of both (iterativeMixed.sh)<br/>
<br/>
All required software were installed using the Conda package Manager. Since samtools > 1.7 is required for consesus calling and this is (at the time of coding) not very compatible with bowtie2, both were installed in different conda environments, which are activated during excution as needed.<br/>
<br/>
The input file(s) should be given from the command line. The output name is derived from the first part of the basename of the input read files.
<br/>
The number of threads tu use, the number of iterations to try as well as the parameters for bowtie2 and samtools must be changed in the script itself.

###Dependencies
bowtie2<br/>
samtools > 1.7


### Author:<br/>
Claudia Paetzold
###Citation<br/>
If you used these scripts, you might want to reference the corresponding journal article:
