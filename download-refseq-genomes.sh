wget --mirror --no-directories https://ftp.ncbi.nlm.nih.gov/genomes/refseq/assembly_summary_refseq.txt
grep -v "#" assembly_summary_refseq.txt \
    | awk -F "\t" '{print $20}' \
    | awk 'BEGIN{FS=OFS="/";filesuffix="genomic.fna.gz"}{ftpdir=$0;asm=$10;file=asm"_"filesuffix;print ftpdir,file}' \
    | wget --mirror --no-directories --input-file -