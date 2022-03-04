---
output:
  word_document: default
  pdf_document: default
  html_document: default
bibliography: bibliography.bib
csl: biomed-central.csl
---
# Genome-wide association study highlights escape by delayed growth from aphid herbivory on in field-grown *Arabidopsis thaliana*


**Author 1**^1^  
**Author 2**^1,2^  
**Author 3**^1,3^  

^1^ University of XX  
^2^ YY University  
^3^ ZZ University    

# Abstract
Growing number of ecological studies have shown that plant developmental and phenological traits greatly contribute to shaping field herbivory. To reveal genetic bases underlying aphid herbivory, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. Focusing on a single significant peak on the third chromosome, we discovered several growth-related genes and a new locus *NAME OF THE GENE* (*NOG*) that encoded a ribosomal gene (AT3G13882). Knockout mutants of *nog* exhibited slower growth and ca. x-days later flowering than Col-0. Our laboratory bioassay further showed that a colony of the mustard aphid *Lipaphis erysimi* was difficult to establish on *nog* due to its small rosette size. These findings suggest that side effects of life-history traits on biotic interaction play a more critical role *in natura* than currently appreciated.

# Introduction
Plants are attacked by herbivores across their life cycles in natural environments. While chemical and physical traits have long been a main focus of anti-herbivore defense [@schoonhoven2005insect], plant life-history traits also account for herbivory in field environments [@carmona2011plant; @barton2017future]. For example, phenological shifts can allow plants to escape from seasonal herbivory [@kawagoe2010escape; @marquis2021escape]. Plants’ visibility for herbivores, namely plant apparency [@feeny1976plant], often changes from vegetative to reproductive phase, which alters the risk of herbivore attacks across plant ontogeny [@zverev2017ontogenetic; @barton2017future]. By focusing on intraspecific variation within a plant species, several studies have shown that plant apparency shapes heritable variation in herbivory among plant genotypes [@johnson2009heritability; @barbour2015multiple; @sato2019plant], though key genes remain unknown.

Genome-wide association study (GWAS) is increasingly recognized as a powerful approach to dissect the genetic architecture of ecologically important traits [@anderson2011ecological; @santure2018wild] and identify novel genes from natural phenotypic variation [@fujii2019stigmatic; @tsuchimatsu2020adaptive]. However, field studies have suggested that controlled laboratory conditions unlikely reflect outdoor environments where interspecific interactions typically occur [@honjo2020seasonality; @sato2019transcriptional], highlighting the importance of *in natura* study on gene functions [@shimizu2011plant; @kudoh2016molecular; @yamasaki2017genomics; @stockenhuber2021uv]. For *in natura* understanding of interspecific interactions, it is necessary to conduct GWAS under field conditions.

*Arabidopsis thaliana* is the model plant species distributed in Europe and naturalized around the world. While *A. thaliana* usually bloom in spring after over-wintering, some cohorts have overlapped life cycles from spring to autumn [@thompson1994spatiotemporal; @taylor2017interacting; @stockenhuber2021uv]. When plants emerge from late spring to early summer, they are threatened by various herbivores, such as aphids and beetles [@mosleh2009herbivory; @sato2019plant]. Of the diverse insect herbivores, aphids are a major herbivore occurring across a natural distribution range of *A. thaliana* [@zust2012natural]. Because aphids often suck phloem saps from flowering stems, we hypothesized that plant life-history traits may play a key role in aphid colonization in the field.  

To reveal the genetic architecture of aphid herbivory, we combined GWAS and mutant analysis in *A. thaliana*. We first conducted GWAS of aphid abundance on 196 *A. thaliana* accessions grown in a field site of Zurich, Switzerland. Near a GWAS peak, we discovered a new locus *NAME OF THE GENE* (*NOG*) as well as several known genes involved in delayed growth. To further validate the candidate genes, we then cultivated and released the mustard aphid *Lipaphis erysimi* on *A. thaliana* mutants. The field-based discovery of *NOG* will gain genetic insights into plant apparency on insect herbivory *in natura*.

# Materials & Methods

## Field GWAS (*Yasu will fill in this section*).    

### Plants
We selected 196 accessions from RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects, most of which were overlapped with previous GWAS of biotic interaction [@horton2014genome]. The list of accessions are available in a supplementary material.

### Field experiments
Our field survey was conducted in the Irchel-Campus of the University of Zurich....  


### Data analysis
GWAS was performed using the GWA-portal website (https://gwas.gmi.oeaw.ac.at) [@seren2018gwa]. Target phenotypes were the total number of *Lipaphis erysimi* and *Brevicoryne brassicae* per plant; or presence (1) or absense (0) of bolting. The imputed fullsequence dataset were chosen as SNP data for the 196 accessions. Pseudo-heritability $h^2$ was calculated for each target phenotype before association mapping. Accelerated mixed models were used for association mapping with a correction of kinship structure. The genome-wide significance level was given at $p=0.05$ with Bonferroni correction of multiple testing. The number of aphids was log($x+1$)-transformed to improve normality. Input phenotype data are available as a supplementary material. After the association mapping, candidate genes were searched within ca. 10 kb near a focal SNP. To estimate gene functions from gene expression information, we used the Arabidopsis eFP browser [@winter2007electronic], 1001 transcriptome data [@kawakatsu2016epigenomic], and ATTED-II coexpression database [@obayashi2018atted] (https://atted.jp/).

Gene ontology enrichment analysis was performed for the results of GWA-portal. xxxx. To deal with statistical non-independence of SNPs, we employed an unbiased GO analysis implemented in the Gowinda program. The cut-off value of minor allele frequency (MAF) was set at 0.025 for the entire SNP set, and SNPs having the top 1\% value of -log<sub>10</sub>($p$) were tested against the entire set. The latest gene feature format (GFF) and GO slim annotation of *A. thaliana* were downloaded from The Arabidopsis Information Resource (TAIR) (https://www.arabidopsis.org/). The Gowinda program was run with the key arguments of --simulations 1000000 --min-significance 1 --gene-definition updownstream1000 --mode gene --min-genes 2.


## Mutant analysis (*Please fill in this section*)

### Plants
T-DNA insertion lines of *A. thaliana* were obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/).

Please describe  
- which lines did you order?  
- how did you confirm the knockout mutations?  
- how many times did you backcross?  


### Bioassay

Please describe  
- what species of aphids did you use?  
- how did you cultivate plants?  
- how did you construct the experimental arena?  
- how did you record the number of aphids?  


# Results


## Field GWAS of the aphid abundance (*Yasu will fill in this section*)  
Bolting:  pseudo h^2^ = near to 1.0; log_BbLe_max: pseudo h^2^ = 0.7; log_BbLe_sum: pseudo h^2^ = 0.71.  


## Mutant analysis in a laboratory (*Please fill in this section*)

### Growth  and flowering of *A. thaliana* mutants

### Aphid attachment experiments

# Discussion (not yet written, combined Results & Discussion possible)
possible topics  
- ecological discussion on the genetic basis of phenological escape from herbivory  
- side effects of ribosomal genes on plant growth (Takashi & Hiro's papers)  
- caveats on other candidates near the GWAS peak  
- summary or concluding paragraph  

<!---

### Figure presentation (subsubsection)
We added trend lines to the bi-plots following the linear regression model:
$$y = a + bx$$
, where $y$ is the response variable; $x$ is the explanatory variable; $a$ indicates the intercept; $b$ represents the regression slope. Because a log link function was used in the Poisson GLM, a regression curve was given by $y = e^{(a + bx)}$ for the number of seeds.  


The dry weight and the number of seeds both showed positive relationships with the plant height ($p<0.05$: Fig. [1](#fig:biplot){reference-type="ref"
reference="fig:biplot"}).  

![Figure 1. Dependency of the dry weight (right) or the number of seeds (right) on the plant height](url){#fig:biplot}  
--->


# References
