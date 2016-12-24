# Get 1000G vcf: ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/
# File name: ALL.wgs.phase3_shapeit2_mvncall_integrated_v5b.20130502.sites.vcf.gz

# Create rsIDs - reference allele file
gzcat ~/Desktop/ALL.wgs.phase3_shapeit2_mvncall_integrated_v5b.20130502.sites.vcf.gz \
  | grep -v '^#' \
  | cut -f3,4 \
  | bgzip > ~/Desktop/ALL.wgs.phase3_shapeit2_mvncall_integrated_v5b.20130502.rsIDs_ref.dat.gz
  
# convert familyTreeDNA csv to vcf
python3 ~/git/familyTreeDNA_analysis/source/ftDNA_vcf.py 
