---
output:
  word_document: default
  pdf_document: default
  html_document: default
bibliography: bibliography.bib
csl: proceedings-of-the-royal-society-b.csl
---
# Genome-wide association study highlights escape from aphids by delayed growth in *Arabidopsis thaliana*


**Author 1**^1^  
**Author 2**^1,2^  
**Author 3**^1,3^  

^1^ University of XX  
^2^ YY University  
^3^ ZZ University    

# Abstract  
Growing number of ecological studies have shown that plant phenological and architectural traits greatly contribute to shaping field herbivory, but their key genes remain largely unknown. Here, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. Near a single significant peak on the third chromosome, we observed known growth-related genes, such as *ROOT HAIR DEFECTIVE3*, and candidate genes with unknown functions. Out of the unknown genes, we discovered that a locus encoding a putative ribosomal gene (AT3G13882) was associated with delayed growth. A knockout mutant of the putative ribosomal gene exhibited slower growth and approximately 8-days later flowering than Col-0 under a long-day condition in a laboratory. Our laboratory experiment further showed that a colony of the turnip aphid *Lipaphis erysimi* was difficult to establish on the mutant of AT3G13882 due to its small rosette size. The field-based detection of a known and novel growth-related gene suggests that side effects of life-history traits on biotic interaction play a more critical role *in natura* than currently appreciated.

# Introduction
Plants are attacked by herbivores across their life cycles in natural environments. While chemical and physical traits have long been a main focus of anti-herbivore defense [@schoonhoven2005insect], plant life-history traits also account for herbivory in field environments [@carmona2011plant; @barton2017future]. For example, phenological changes can allow plants to escape from seasonal herbivory [@kawagoe2010escape; @marquis2021escape]. Plants’ visibility for herbivores, namely plant apparency [@feeny1976plant], also changes from vegetative to reproductive phase, which alters the risk of herbivore attacks across plant ontogeny [@zverev2017ontogenetic; @barton2017future]. By focusing on intraspecific variation within a plant species, several studies have shown that plant phenological and architectural traits shape heritable variation in herbivory among plant genotypes [@johnson2009heritability; @barbour2015multiple; @sato2019plant], though only a few key genes have been identified so far [@barbour2022keystone].

Genome-wide association study (GWAS) is increasingly recognized as a powerful approach to dissect the genetic architecture of ecologically important traits [@anderson2011ecological; @santure2018wild] and identify novel genes from natural phenotypic variation [@fujii2019stigmatic; @tsuchimatsu2020adaptive]. However, field studies have suggested that controlled laboratory conditions unlikely reflect outdoor environments where interspecific interactions typically occur [@honjo2020seasonality; @sato2019transcriptional], highlighting the importance of *in natura* study on gene functions [@shimizu2011plant; @kudoh2016molecular; @yamasaki2017genomics; @stockenhuber2021uv]. For *in natura* understanding of interspecific interactions, it is necessary to conduct GWAS under field conditions.

*Arabidopsis thaliana* is the model plant species distributed in Europe and naturalized around the world. While *A. thaliana* usually bloom in spring after over-wintering, some cohorts have overlapped life cycles from spring to autumn [@thompson1994spatiotemporal; @taylor2017interacting; @stockenhuber2021uv]. When plants emerge from late spring to early summer, they are threatened by various herbivores, such as aphids and beetles [@mosleh2009herbivory; @sato2019plant]. Of the diverse insect herbivores, aphids are a major herbivore occurring across a natural distribution range of *A. thaliana* [@zust2012natural]. Because aphids often suck phloem saps from flowering stems, we hypothesized that plant life-history traits may play a key role in aphid colonization in the field.  

To reveal the genetic architecture of aphid herbivory, we combined GWAS and mutant analysis in *A. thaliana*. We first conducted GWAS of aphid abundance on 196 *A. thaliana* accessions grown in a field site of Zurich, Switzerland. We observed several known genes involved in delayed growth, in addition to candidate genes with unknown functions, near a peak of GWAS. To further validate the candidate genes, we then cultivated and released the turnip aphid *Lipaphis erysimi* on *A. thaliana* mutants.  

# Materials & Methods

## Field GWAS      

### Plant genotypes  
We selected 196 *A. thaliana* accessions from RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects, most of which were overlapped with previous GWAS of biotic interaction [@horton2014genome]. The list of accessions is available in a supplementary material.

### Field experiment    
To observe aphids on a simulated late cohort, we exposed *A. thaliana* to field environment from 4 to 25 July in 2018 at a field site within Europe. We initially cultivated eight replicates of the 196 accessions in a laboratory. Seeds are sown on 33-mm diameter Jiffy-seven^(R)^ pots and stratified under a constant dark 4$^\circ$C condition for a week. Seedlings were grown for 6 weeks under a short-day condition (8L:16D cycle with 20$^\circ$C air temperature). Plants were then potted in a plastic pot filled with mixed soils of agricultural composts (Profi Substrat Classic CL ED73, Einheitserde Co.) and perlites with a compost to perlite ratio of 3:1 litter volume. The potted plants were then transferred to the outdoor garden at the University of Zurich-Irchel (Zurich, Switzerland; 47$^\circ$ 23'N, 8$^\circ$ 33'E). Aphids were counted by a single observer every two or three days. To examine whether the aphid abundance differed between plants with and without flowering stems, we also recorded the presence or absence of bolting two weeks after the start of field experiment.


### Data analysis  
GWAS was performed using the GWA-portal website (https://gwas.gmi.oeaw.ac.at) [@seren2018gwa]. Target phenotypes were the maximum number of aphids per plant throughout the experiment. The imputed fullsequence dataset were chosen as SNP data for the 196 accessions. Pseudo-heritability $h^2$ was calculated for each target phenotype before association mapping. Accelerated mixed models were used for association mapping with a correction of kinship structure. The genome-wide significance level was given at $p=0.05$ with Bonferroni correction of multiple testing. The number of aphids was log($x+1$)-transformed to improve normality. Input phenotype data are available as a supplementary material. After the association mapping, candidate genes were searched within ca. 10 kb near a focal SNP. To estimate gene functions from gene expression information, we used the Arabidopsis eFP browser [@winter2007electronic], 1001 transcriptome data [@kawakatsu2016epigenomic], and ATTED-II coexpression database [@obayashi2018atted] (https://atted.jp/).

To estimate gene functions associated with the aphid abundance, we conducted gene ontology (GO) enrichment analysis for the output of GWA-portal. To deal with statistical non-independence of SNPs, we employed an unbiased GO analysis implemented in the Gowinda program [@kofler2012gowinda]. The cut-off value of minor allele frequency (MAF) was set at 0.025 for the entire SNP set, leaving 2,500,979 SNPs in total. SNPs having the top 1\% value of -log<sub>10</sub>($p$) were tested against the entire set. The latest gene feature format (GFF) and GO slim annotation of *A. thaliana* were obtained from The Arabidopsis Information Resource (TAIR) (https://www.arabidopsis.org/). The Gowinda program was run with the key arguments of --simulations 1000000 --min-significance 1 --gene-definition updownstream1000 --mode gene --min-genes 2.


## Mutant analysis  

### *Arabidopsis thaliana* mutants
T-DNA sequence-indexed lines of A. thaliana was obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/). Four mutant lines of each gene with A. thaliana Columbia accession were ordered (O’Malley et al., 2015), in total 12 mutant lines (Table S1). Since some lines failed in germination or lost during back-crossing, only one line for each gene were confirmed and used. SALK_112372.30.80.x/N612372 (MYB26); SALK_039481.29.99.f/N670586 (NOG); SAIL_1220b_A10/N844563 (EPFL3/ AT3G13898). Received seeds were stored at 4 °C for more than three days and sterilized with 12 ml HCl (32%) adding with 200 ml Javel water for 2.5 hours to kill any possible pest, fungi, and bacteria. Seeds were germinated and grown in long day chamber (16h light/8h dark, humidity, T) after one-week stratified at 4 $^\circ$C in the dark. Mutant plants were crossed with wild type plants for three generations. The final generation heterologous plant was self-crossed to produce the homologous mutant seeds. The mutant plants were screened by PCR. DNA and RNA extraction DNA used for Sanger sequencing and homology checking were extracted from young leaves by cetrimonium bromide (CTAB) method. RNA was extracted from leaf and flower using method for the gene expression check.
Sanger sequencing and PCR check Sanger sequencing was used to confirm the T-DNA insertion position of each mutant lines DNA (Fig. S). All three lines used were inserted in the exon (and intron) region. During the three generation back-crossing, the plant DNA was checked for mutant gene using PCR with GoTaq (). 
The primers used in Fig. S.

Please describe  
- which lines did you order?  
- how did you confirm the knockout mutations?  
- how many times did you backcross?  


### Laboratory experiments

To observe plant growth, we cultivated 10 replicates of the three back-crossed mutant lines and the Col-0 wild type under a long-day condition (16h light/8h dark, T). Seeds were sown on a 8 cm$^3$ pot filled with the agricultural composts (Profi Substrat Classic CL ED73, Einheitserde Co.), and stratified at 4 $^\circ$C under a constant dark condition. The stratified seeds were then transferred to the long day condition. Seedlings were grown for 20 days. The rosette diameter (cm) was recorded as an index of plant size before aphids were released as described next.  

To assess the likelihood of aphid colonization on the mutant plants, we then enclosed the potted plants separately with a mesh net, and released five individuals of the turnip aphid *L. erysimi* on each plant. The experimental aphids were derived from a source population established by the previous study [@barbour2022keystone]. The enclosed plants were incubated under the long-day condition. The number of aphids was counted by eyes 3, 7, 10, and 14 days after the release of aphids. Days to flowering i.e., flowering time was also recorded during the experiment. Phenotype values of each mutant were compared with those of the Col-0 wild type using Mann-Whitney's $U$-test with Holm's adjustment for multiple testing.  


# Results  


## Field GWAS of the aphid abundance   

We observed the two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*, occurring on the 196 accessions of *A. thaliana* during early summer in Zurich. These aphids more likely colonized on bolted accessions than non-bolted accessions (non-bolted and bolted plants = 0 and 7 aphids in median, respectively; Mann-Whitney's $U$-test, $U = 124158, p < 10^{-15}$), indicating that the presence of flowering stem was highly significantly associated with the aphid abundance. The pseudo-heritability $h^2$ of the aphid number was 0.7. The large heritability suggests that the observed trait is likely under genetic control and thus deserves further association mapping.   

We then performed GWAS using the accelerated mixed model that corrects a kinship structure. Regarding the aphid number, we observed a significant SNP above the genome-wide Bonferroni threshold (chr3-4579292, $p<10^{-8}$,  MAF=0.026: Fig. [1](#fig:ManPlot){reference-type="ref"}). When comparing trait values between two alleles on the significant SNP marker, three of five accessions shared similar haplotypes from AT3G13870 to AT3G13890 locus (Fig. [S1](#fig:1001browser){reference-type="ref"}), spanning a X kbp region. Several known genes were located near this genomic region: AT3G13870 locus, also known as *ROOT HAIR DEFECTIVE3* (*RHD3*), is known to regulate root hair developments [@schiefelbein1990genetic] and thereby results in delayed growth [@zhang2013root]. AT3G13890 locus is known to encode MYB26 transcription factor responsible for the anther dehiscence and male sterility [@mitsuda2006efficient]. AT3G13880 (*OTP72*) locus itself has no visible phenotype, but one allele *otp72-2* is known to affect gene the expression level of *RHD3* [@chateigner2013domainsz]. Known functions of these candidate genes led us to further hypothesize that genes involved in growth or reproduction have side effects on aphid colonization on a plant stem.  

To estimate known gene functions associated with the aphid numbers, we also performed GO enrichment analysis for SNPs having the top 1% score of -log10($p$). We detected two significant GOs, "DNA-binding transcription factor activity" and "positive regulation of transcription, DNA-templated" (FDR-adjusted $p<0.05$). Although the other GOs were not significant after the FDR correction, the top 22 categories included GOs involving defense, growth, and reproduction, such as "positive regulation of salicylic acid mediated signaling pathway", "positive regulation of leaf senescence", "pollen tube development" (non-adjusted $p<0.01$: Fig. [S2](#fig:gomap){reference-type="ref"}). The results of GO enrichment analysis support the relevance of plant life-history traits as well as defense signaling to the aphid numbers. 

## Growth and aphid colonization on *Arabidopsis* mutants in a laboratory  

A putative ribosomal gene (AT3G13882), *EPIDERMAL PATTERNING FACTOR LIKE 3* (*EPFL3*: AT3G13898), and *MYB26* were located nearby the significant SNP (chr3-4579292). Thus, we cultivated single-gene mutants of these three genes to examine their visible phenotypes. After 20 days growth, the rosette size of the AT3G13882 mutant plants was 3.29 cm on average, which was significantly smaller than wild type plants (5.38 cm) and other mutant plants (6.29 cm of EPFL2, 6.3 cm of MYB26) (adjusted p-value lower than 0.001 by ‘Mann-Whitney’ test) (Fig 2C). From this time to flowering, NOG mutant plants took 18.8 days, significantly longer than the 10.8 days of wild type plants, 7.5 days of EPFL3, and 3.57 days of MYB26 mutant plants (adjusted p-value lower than 0.001 by ‘Mann-Whitney’ test with Holm’s adjustment) (Fig 2D). On the contrary, the EPFL3 mutant plants showed significantly larger initial rosette size and the resulting quicker flowering comparing to the wild type plants (adjusted p-value lower than 0.01 by ‘Mann-Whitney’ test). The MYB26 mutant plants flowered in significant shorter time comparing to all other plants, although the rosette size is similar with the wild type plants and even smaller than the EPFL3 mutant plants. After 34 days growth, the plants sizes were very different (Fig 2B). The mutant plants of NOG showed delayed in growth and flowering, EPFL3 showed beforehand in growth and flowering, and MYB26 showed the accelerated flowering only.  

To test whether the delayed growth could prevent aphid colonization, we then released *Lipaphis erysimi*, one of the two aphid species observed in the field, on mutant plants. During the 14 days incubation, the AT3G13882 mutant hosted lower number of aphids, while *EPFL3* and *MYB26* mutants had no significant difference comparing to wild type plants (Fig [2](#fig:mutant){reference-type="ref"}D). The delayed growth and flowering of NOG mutant plants depressed the aphid colonization.  

# Discussion  

Our field GWAS detected a significant peak and growth-related genes, such as *RHD3*, associated with the aphid abundance. While the most individuals of *A. thaliana* bloom in spring [@thompson1994spatiotemporal; @taylor2017interacting], some flowering individuals remain until late spring and inhabited by specialist aphids [@sato2019plant]. Our GWAS population could simulate aphid colonization on the late cohort with various accessions, where plants without inflorescence might escape from aphids. A recent laboratory study has also shown that side effects of a glucosinolate biosynthesis gene *AOP2* on plant growth alter plant's capacity to harbor aphids and their predators on *A. thaliana* [@barbour2022keystone]. Although we did not detect *AOP2* near the GWAS peak, our field study supports the notion that genes associated with plant growth can structure populations or communities of associated organisms.  

Our laboratory experiment further showed that a mutant of a putative ribosomal gene experienced the severe delay of growth and thereby could escape from aphid colonization.  While ribosomal genes were traditionally considered housekeeping genes of the protein synthesis machinery, growing number of studies have shown that mutants of ribosome-related genes exhibit a wide variety of growth and reproductive phenotypes, such as the reduction of leaf cell number [@fujikura2009coordination], reduced root length [@creff2010two], the reduction of pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen]. Some of these studies reported a pleiotropy of a ribosomal gene on the plant growth and pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen], where natural alleles could alleviate pleiotrophic growth defects [@tsuchimatsu2020adaptive]. Our findings from AT3G13882 locus adds insights into the growth deterioration due to ribosomal gene mutations, although natural variants responsible for the delayed growth have yet to be identified.  

Other than the putative ribosomal gene, mutants of *EPFL3* and *MYB26* exhibited slight phenotypes of early growth and flowering compared to the wild type. EPFL3 is one of EPIDERMAL PATTERNING FACTOR-LIKE (EPFL) family peptides which are known to control stomatal patterning [@hunt2010signalling], leaf morphogenesis [@tameshige2016secreted], inflorescence development [@abrash2011generation], though biological roles of EPFL3 are still unknown. *MYB26* is more likely to affect flowering than growth (Fig. [2](#fig:mutant){reference-type="ref"}B,C), because this gene is known to encode a transcription factor specifically expressed in reproductive organ [@mitsuda2006efficient]. It was thus possible that mutants of these two genes exhibit the altered phenotypes of growth or flowering; however, the phenotypes of these two mutants were not so severe that they could affect aphid abundance in our laboratory experiment (Fig. [2](#fig:mutant){reference-type="ref"}D).   

In summary, our field GWAS and laboratory experiment together highlight key genes responsible for side effects of plant life-history traits on herbivory. While it is widely accepted that plant genetic variation governs herbivore abundance and communities in the field [@johnson2009heritability; @barbour2015multiple; @sato2019plant], a keystone gene shaping the ecological communities was not identified until recently [@barbour2022keystone]. The joint approach using field GWAS and mutant analyses may broaden the opportunity to investigate the function of keystone genes *in natura*.  


# Tables & Figures 

![Figure 1. GWAS of the aphid abundance on 196 *A. thaliana* accessions grown in the field. Manhattan plot shows the associaiton score of -log10($p$) against five choromosomes of *A. thaliana* at MAF cut-off = 0.025, where a horizontal dashed line indicates the genome-wide Bonferroni threshold at $p=0.05$. QQ-plot shows relationships between the observed and expected -log10($p$) values, where a solid line indicates randomly expected -log10($p$) and the shaded area corresponds to its 95\% confidence intervals. The upper inset focuses on the top-scroing SNP at Chr3-4579292, and desplays the position of candidate genes (left) or compares phenotype values i.e., log(no. of aphids + 1) between the two SNP alleles (right).](../figures/database_snapshot/Slide5.png){#fig:ManPlot}  

![Figure 2. The Col-0 wild type and three mutants of *Arabidopsis thaliana* (A) showing the phenotypes of growth (B), flowering time (C), and aphid colonization (D) in a laboratory. Asterisks above each mutant indicate adjusted $p$-values by Mann-Whitney's $U$-tests against the wild type (WT); *** $p<0.001$, ** $p<0.01$, * $p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/mutant.pdf){#fig:mutant}  


# Supplementary Materials 

![Figure S1. A snapshot of the genomic region near Chr3-4579292 in the 1001 Genome Browser (http://signal.salk.edu/atg1001/3.0/gebrowser.php). The upper four accessions carried a rare allele susceptible to aphids (inset of Fig. [1](#fig:ManPlot){reference-type="ref"}). The accessions listed below Col-0 carried a major allele and harboured no aphids in the field GWAS.](../figures/database_snapshot/Slide3.png){#fig:1001browser}  

![Figure S2. REVIGO treemap summarizing suggestive GOs detected by the Gowinda program. The panel size corresponds to -log10($p$). Colors indicate similar GO families summarized by REVIGO.](../figures/revigo_treemap.pdf){#fig:gomap}  


# References
