# download-ncbi-databases

```bash
mkdir refseq-genomes
cd refseq-genomes
# this will download directly into the working directory
bash ../download-refseq-genomes.sh
```

```
# most are not reference or representative, but some are
$ grep -v "#" assembly_summary_refseq.txt | awk '{FS="\t"}{print $5}' | sort | uniq -c
      1 genome
 152637 na
     68 reference genome
  12322 representative genome

# all are latest
$ grep -v "#" assembly_summary_refseq.txt | awk '{FS="\t"}{print $11}' | sort | uniq -c
      1 Chromosome
 165027 latest

# most are contig or scaffold, but many are complete as well
$ grep -v "#" assembly_summary_refseq.txt | awk '{FS="\t"}{print $12}' | sort | uniq -c
   2927 Chromosome
  26005 Complete Genome
  83564 Contig
      1 Major
  52531 Scaffold

# most are major, but minor and patch are probably fine
$ grep -v "#" assembly_summary_refseq.txt | awk '{FS="\t"}{print $13}' | sort | uniq -c
      1 Full
 163529 Major
   1496 Minor
      2 Patch

# most are full
$ grep -v "#" assembly_summary_refseq.txt | awk '{FS="\t"}{print $14}' | sort | uniq -c
      1 2014/08/01
 164679 Full
    348 Partial
```
