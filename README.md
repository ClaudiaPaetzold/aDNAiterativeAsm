# aDNAiterativeAsm
Assembly of Hippopotamus aDNA using iterative mapping<br/>
<br/>
###Usage
> iterativePE.sh [filename]*.fastq.gz<br/>
<br/>
might return:<br/>
<br/>
```[filename]<br/>
=== Iteration 0 ===<br/>
iterations/[filename]_0.fasta<br/>
Settings:<br/>
  Output files: "bowtie2_index.*.bt2"<br/>
  Line rate: 6 (line is 64 bytes)<br/>
  Lines per side: 1 (side is 64 bytes)<br/>
  Offset rate: 4 (one in 16)<br/>
  FTable chars: 10<br/>
  Strings: unpacked<br/>
  Max bucket size: default<br/>
  Max bucket size, sqrt multiplier: default<br/>
  Max bucket size, len divisor: 4<br/>
  Difference-cover sample period: 1024<br/>
  Endianness: little<br/>
  Actual local endianness: little<br/>
  Sanity checking: disabled<br/>
  Assertions: disabled<br/>
  Random seed: 0<br/>
  Sizeofs: void*:8, int:4, long:8, size_t:8<br/>
Input files DNA, FASTA:<br/>
  iterations/[filename]_0.fasta<br/>
Reading reference sizes<br/>
  Time reading reference sizes: 00:00:00<br/>
Calculating joined length<br/>
Writing header<br/>
Reserving space for joined string<br/>
Joining reference sequences<br/>
  Time to join reference sequences: 00:00:00<br/>
bmax according to bmaxDivN setting: 4101<br/>
Using parameters --bmax 3076 --dcv 1024<br/>
  Doing ahead-of-time memory usage test<br/>
  Passed!  Constructing with these parameters: --bmax 3076 --dcv 1024<br/>
Constructing suffix-array element generator<br/>
Building DifferenceCoverSample<br/>
  Building sPrime<br/>
  Building sPrimeOrder<br/>
  V-Sorting samples<br/>
  V-Sorting samples time: 00:00:00<br/>
  Allocating rank array<br/>
  Ranking v-sort output<br/>
  Ranking v-sort output time: 00:00:00<br/>
  Invoking Larsson-Sadakane on ranks<br/>
  Invoking Larsson-Sadakane on ranks time: 00:00:00<br/>
  Sanity-checking and returning<br/>
Building samples<br/>
Reserving space for 12 sample suffixes<br/>
Generating random suffixes<br/>
QSorting 12 sample offsets, eliminating duplicates<br/>
QSorting sample offsets, eliminating duplicates time: 00:00:00<br/>
Multikey QSorting 12 samples<br/>
  (Using difference cover)<br/>
  Multikey QSorting samples time: 00:00:00<br/>
Calculating bucket sizes<br/>
Splitting and merging<br/>
  Splitting and merging time: 00:00:00<br/>
Avg bucket size: 16407 (target: 3075)<br/>
Converting suffix-array elements to index image<br/>
Allocating ftab, absorbFtab<br/>
Entering Ebwt loop<br/>
Getting block 1 of 1<br/>
  No samples; assembling all-inclusive block<br/>
  Sorting block of length 16407 for bucket 1<br/>
  (Using difference cover)<br/>
  Sorting block time: 00:00:00<br/>
Returning block of 16408 for bucket 1<br/>
Exited Ebwt loop<br/>
fchr[A]: 0<br/>
fchr[C]: 5372<br/>
fchr[G]: 10066<br/>
fchr[T]: 12355<br/>
fchr[$]: 16407<br/>
Exiting Ebwt::buildToDisk()<br/>
Returning from initFromVector<br/>
Wrote 4200035 bytes to primary EBWT file: bowtie2_index.1.bt2<br/>
Wrote 4108 bytes to secondary EBWT file: bowtie2_index.2.bt2<br/>
Re-opening _in1 and _in2 as input streams<br/>
Returning from Ebwt constructor<br/>
Headers:<br/>
    len: 16407<br/>
    bwtLen: 16408<br/>
    sz: 4102<br/>
    bwtSz: 4102<br/>
    lineRate: 6<br/>
    offRate: 4<br/>
    offMask: 0xfffffff0<br/>
    ftabChars: 10<br/>
    eftabLen: 20<br/>
    eftabSz: 80<br/>
    ftabLen: 1048577<br/>
    ftabSz: 4194308<br/>
    offsLen: 1026<br/>
    offsSz: 4104<br/>
    lineSz: 64<br/>
    sideSz: 64<br/>
    sideBwtSz: 48<br/>
    sideBwtLen: 192<br/>
    numSides: 86<br/>
    numLines: 86<br/>
    ebwtTotLen: 5504<br/>
    ebwtTotSz: 5504<br/>
    color: 0<br/>
    reverse: 0<br/>
Total time for call to driver() for forward index: 00:00:00<br/>
Reading reference sizes<br/>
  Time reading reference sizes: 00:00:00<br/>
Calculating joined length<br/>
Writing header<br/>
Reserving space for joined string<br/>
Joining reference sequences<br/>
  Time to join reference sequences: 00:00:00<br/>
  Time to reverse reference sequence: 00:00:00<br/>
bmax according to bmaxDivN setting: 4101<br/>
Using parameters --bmax 3076 --dcv 1024<br/>
  Doing ahead-of-time memory usage test<br/>
  Passed!  Constructing with these parameters: --bmax 3076 --dcv 1024<br/>
Constructing suffix-array element generator<br/>
Building DifferenceCoverSample<br/>
  Building sPrime<br/>
  Building sPrimeOrder<br/>
  V-Sorting samples<br/>
  V-Sorting samples time: 00:00:00<br/>
  Allocating rank array<br/>
  Ranking v-sort output<br/>
  Ranking v-sort output time: 00:00:00<br/>
  Invoking Larsson-Sadakane on ranks<br/>
  Invoking Larsson-Sadakane on ranks time: 00:00:00<br/>
  Sanity-checking and returning<br/>
Building samples<br/>
Reserving space for 12 sample suffixes<br/>
Generating random suffixes<br/>
QSorting 12 sample offsets, eliminating duplicates<br/>
QSorting sample offsets, eliminating duplicates time: 00:00:00<br/>
Multikey QSorting 12 samples<br/>
  (Using difference cover)<br/>
  Multikey QSorting samples time: 00:00:00<br/>
Calculating bucket sizes<br/>
Splitting and merging<br/>
  Splitting and merging time: 00:00:00<br/>
Avg bucket size: 16407 (target: 3075)<br/>
Converting suffix-array elements to index image<br/>
Allocating ftab, absorbFtab<br/>
Entering Ebwt loop<br/>
Getting block 1 of 1<br/>
  No samples; assembling all-inclusive block<br/>
  Sorting block of length 16407 for bucket 1<br/>
  (Using difference cover)<br/>
  Sorting block time: 00:00:00<br/>
Returning block of 16408 for bucket 1<br/>
Exited Ebwt loop<br/>
fchr[A]: 0<br/>
fchr[C]: 5372<br/>
fchr[G]: 10066<br/>
fchr[T]: 12355<br/>
fchr[$]: 16407<br/>
Exiting Ebwt::buildToDisk()<br/>
Returning from initFromVector<br/>
Wrote 4200035 bytes to primary EBWT file: bowtie2_index.rev.1.bt2<br/>
Wrote 4108 bytes to secondary EBWT file: bowtie2_index.rev.2.bt2<br/>
Re-opening _in1 and _in2 as input streams<br/>
Returning from Ebwt constructor<br/>
Headers:<br/>
    len: 16407<br/>
    bwtLen: 16408<br/>
    sz: 4102<br/>
    bwtSz: 4102<br/>
    lineRate: 6<br/>
    offRate: 4<br/>
    offMask: 0xfffffff0<br/>
    ftabChars: 10<br/>
    eftabLen: 20<br/>
    eftabSz: 80<br/>
    ftabLen: 1048577<br/>
    ftabSz: 4194308<br/>
    offsLen: 1026<br/>
    offsSz: 4104<br/>
    lineSz: 64<br/>
    sideSz: 64<br/>
    sideBwtSz: 48<br/>
    sideBwtLen: 192<br/>
    numSides: 86<br/>
    numLines: 86<br/>
    ebwtTotLen: 5504<br/>
    ebwtTotSz: 5504<br/>
    color: 0<br/>
    reverse: 1<br/>
Total time for backward call to driver() for mirror index: 00:00:00<br/>
Mapped reads (after dedup): 1151<br/>
=== Iteration 1 ===<br/>
iterations/[filename]_1.fasta<br/>
...<br/>
...<br/>
Total time for backward call to driver() for mirror index: 00:00:00<br/>
Mapped reads (after dedup): 10364<br/>
No new reads mapped. Iteration converged. Stopping.<br/>
✅ Iteration complete. Final consensus: iterations/[filename]_3.fasta<br/>
📄 Mapped reads log saved to: [filen]_reads_per_iteration.tsv<br/>```
<br/>
<br/>
###Information<br/>
Three scripts comprising bash commands and the mapper bowtie2 to map reads iteratively to create a consensus sequence and samtools to create a consensus sequence.<br/><br/>
<br/>
Reads can be single-end (iterativeSE.sh), paired-end(iterative-PW.sh) or a mix of both (iterativeMixed.sh)<br/>
<br/>
All required software were installed using the Conda package Manager. Since samtools > 1.7 is required for consesus calling and this is (at the time of coding) not very compatible with bowtie2, both were installed in different conda environments, which are activated during excution as needed.<br/>
<br/>
The input file(s) should be given from the command line. The output name is derived from the first part of the basename of the input read files.<br/>
<br/>
The number of threads tu use, the number of iterations to try as well as the parameters for bowtie2 and samtools must be changed in the script itself.<br/>
<br/>
###Dependencies<br/>
bowtie2<br/>
samtools > 1.7<br/>
<br/>
<br/>
### Author:<br/>
Claudia Paetzold<br/>
###Citation<br/>
If you used these scripts, you might want to reference the corresponding journal article:<br/>
<br/>
