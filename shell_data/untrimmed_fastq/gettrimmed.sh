for f in $[1]/*_1.fastq-gz
do
fastq_folder=$(dirname $f)
srr=$(basename $[f] _fastq.gz)
trimomatic PE\
$f ~/data/untrimmed_fastq/$[srr]_2.fastq.gz\
~/data/trimmed_fastq/$[srr]_2.trim.fa

for k in 'seq 15 3 45'; do 
abyss=pe k=$k name=testk$k in='test-data/reads1.fastq test-data/reads2.fastq'
done
head -1
grep 'scaffolds.fa'"stats"

ombinar variantes y metadatos

variants <- read.csv("/home/dcuser/r_data/combined_tidy_vcf.csv")

ecoli_met_data <- read.csv("/home/dcuser/Ecoli.csv")

variants_w_metadata <- left_join(variants,ecoli_met_data,by=c("sample_id" = "run"))

variants_w_metadata %>% group_by(sample_id,cit) %>% tally 



                                                   
                                                   
#estadisticas de ensamb
install.packages("tidyr")
library("tidyr")

#lea las estadisticas de ensamblaje

assembly_stats <- reads.csv("assembly/allteststats",sep="\t") %>%

#make sure your table shows the  k value so you ca plot it
assembly_stats2 <- separate(assembly_stats, n, c("name", "n"),sep = ";")
separate(name1,c("k",name),sep="-") %>% separate(k,c("name2" "k"),sep="k")
assembly_stats_ecoli2 <- separate(assembly_stats_ecoli,n,c("name1","n"),sep=";") %>%
separate(name1,c("k","name1"),sep="-")%>% separate(k,c("name2","k", sep "k")


                                                   
#plot N50 adn total length as a function of k
gglot(assembly_stats2,aes(k,N50))+geom_line()+geom_point()
gglot(assembly_stats2_ecoli2,aes(k,N50))+geom_line()+geom_point()
gglot(assemblt_stats2_ecoli2,aes(k,N50))+geom_point()
gglot(assemblt_stats2_ecoli2,aes(N50,as.interger(n)))+geom_point()
gglot(assemblt_stats2_ecoli2,aes(N50,as.interger(n)))+geom_point()+
  geom_smooth(method="lm", se=FALSE)
#same didnt work right
assambly_stats_ecoli2 <- filter(assembly_stats_ecoli2, N50!=0)

#There lots more plots to make
#if you want to comunicate all the results effectively use RMarkdown
#install.packages("knitr")
rep -B1 -A2 NNNNN .. /untrimmed_fastq/*. fastq> ../processed_data/bad_reads.fastq

grep -B1 -A2 NNNNN $[1]/*. fastq> ../processed_data/bad_reads.fastq

#look at E.coli metadata
install.packages("dplyr")
library(dplyr)

ecoli <- read.csv ("Ecoli.csv")
download.file(url = "https://raw.githubusercontent.com/datacarpentry/wrangling-genomics/gh-pages/files/Ecoli_metadata_composite.csv" , 
              destfile = "Ecoli.csv")
ecoli %>% count(cit)
View(ecoli)

do 

install.packages("git")
library("git")



git config -- global user.name "R "
git config -- global


git comit -m "initial commit assembly"
git status on branch master
git commit -m "add"
