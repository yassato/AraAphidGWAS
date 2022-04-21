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
Growing number of ecological studies have shown that plant phenological and architectural traits modulate herbivore colonization to host plants, but their key genes remain largely unknown. Here, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. Near a single significant peak on the third chromosome, we observed known growth-related genes, such as *ROOT HAIR DEFECTIVE3*, and candidate genes with unknown functions. Out of the unknown genes, a mutant of the putative ribosomal gene (AT3G13882) exhibited far slower growth and later flowering than Col-0 under a long-day condition in a laboratory. Our laboratory experiment further showed that the turnip aphid *Lipaphis erysimi* failed to colonize on the mutant of AT3G13882 due to its small size. These findings suggest that side effects of growth-related genes may play a more critical role in interspecific interactions under field conditions than currently appreciated.

# Introduction
Plants are attacked by herbivores across their life cycles in natural environments. While chemical and physical traits have long been a main focus of anti-herbivore defense [@schoonhoven2005insect], plant life-history traits also account for herbivory in field environments [@carmona2011plant; @barton2017future]. For example, phenological changes can allow plants to escape from seasonal herbivory [@kawagoe2010escape; @marquis2021escape]. Plants’ visibility for herbivores, namely plant apparency [@feeny1976plant], also changes from vegetative to reproductive phase, which alters the risk of herbivore attacks across plant ontogeny [@zverev2017ontogenetic; @barton2017future]. By focusing on intraspecific variation within a plant species, several studies have shown that plant phenological and architectural traits shape heritable variation in herbivory among plant genotypes [@johnson2009heritability; @barbour2015multiple; @sato2019plant], though only a few key genes have been identified so far [@barbour2022keystone].

Genome-wide association study (GWAS) is increasingly recognized as a powerful approach to dissect the genetic architecture of ecologically important traits [@anderson2011ecological; @santure2018wild] and identify novel genes from natural phenotypic variation [@fujii2019stigmatic; @tsuchimatsu2020adaptive]. However, field studies have suggested that controlled laboratory conditions unlikely reflect outdoor environments where interspecific interactions typically occur [@honjo2020seasonality; @sato2019transcriptional], highlighting the importance of *in natura* study on gene functions [@shimizu2011plant; @kudoh2016molecular; @yamasaki2017genomics; @stockenhuber2021uv]. For *in natura* understandings of functional genes involved in interspecific interactions, it is necessary to conduct GWAS under field conditions.

*Arabidopsis thaliana* is the model plant species distributed in Europe and naturalized around the world. While *A. thaliana* usually bloom in spring after over-wintering, some cohorts have overlapped life cycles from spring to autumn [@thompson1994spatiotemporal; @taylor2017interacting; @stockenhuber2021uv]. When plants emerge from late spring to early summer, they are threatened by various herbivores, such as aphids and beetles [@mosleh2009herbivory; @sato2019plant]. Of the diverse insect herbivores, aphids are a major herbivore occurring across a natural distribution range of *A. thaliana* [@zust2012natural]. Because aphids often suck phloem saps from flowering stems, we hypothesized that plant life-history traits may play a key role in aphid colonization under field conditions.  

To reveal the genetic architecture of aphid herbivory, we combined GWAS and mutant analysis in *A. thaliana*. We first conducted GWAS of aphid abundance on 196 *A. thaliana* accessions grown in a field site of Zurich, Switzerland. We observed several known genes involved in delayed growth, in addition to candidate genes with unknown functions, near a peak of GWAS. To further test the candidate genes, we then cultivated and released the turnip aphid *Lipaphis erysimi* on *A. thaliana* mutants.  

# Materials & Methods

## Field GWAS      

### Plant genotypes  
We selected 196 *A. thaliana* accessions from RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects, most of which were overlapped with previous GWAS of biotic interaction [@horton2014genome]. The accession list and phenotypes are available in Table S1.  

### Field experiment    
To observe aphids on a simulated late cohort, we exposed *A. thaliana* to field environment from 4 to 25 July in 2018 at a field site within Europe. We initially cultivated eight replicates of the 196 accessions in a laboratory. Seeds are sown on 33-mm diameter Jiffy-seven^(R)^ pots and stratified under a constant dark 4$^\circ$C condition for a week. Seedlings were grown for 6 weeks under a short-day condition (8L:16D cycle with 20$^\circ$C air temperature). Plants were then potted in a plastic pot filled with mixed soils of agricultural composts (Profi Substrat Classic CL ED73, Einheitserde Co.) and perlites with a compost to perlite ratio of 3:1 litter volume. The potted plants were then transferred to the outdoor garden at the University of Zurich-Irchel (Zurich, Switzerland; 47$^\circ$ 23'N, 8$^\circ$ 33'E). Aphids were counted by a single observer every two or three days. To examine whether the aphid abundance differed between plants with and without flowering stems, we also recorded the presence or absence of bolting two weeks after the start of field experiment.


### Data analysis  
GWAS was performed using the GWA-portal website (https://gwas.gmi.oeaw.ac.at) [@seren2018gwa]. Target phenotypes were the maximum number of aphids per plant throughout the experiment. The imputed fullsequence dataset were chosen as SNP data for the 196 accessions. Pseudo-heritability $h^2$ was calculated for each target phenotype before association mapping. Accelerated mixed models were used for association mapping with a correction of kinship structure. The genome-wide significance level was given at $p=0.05$ with Bonferroni correction of multiple testing. The number of aphids was log($x+1$)-transformed to improve normality. Input phenotype data are available as a supplementary material. After the association mapping, candidate genes were searched within ca. 10 kb near a focal SNP.  

To estimate gene functions associated with the aphid abundance, we conducted gene ontology (GO) enrichment analysis for the output of GWA-portal. To deal with statistical non-independence of SNPs, we employed an unbiased GO analysis implemented in the Gowinda program [@kofler2012gowinda]. The cut-off value of minor allele frequency (MAF) was set at 0.025 for the entire SNP set, leaving 2,500,979 SNPs in total. SNPs having the top 1\% value of -log$_10$($p$) were tested against the entire set. The latest gene feature format (GFF) and GO slim annotation of *A. thaliana* were obtained from The Arabidopsis Information Resource (TAIR) (https://www.arabidopsis.org/). The Gowinda program was run with the key arguments of --simulations 1000000 --min-significance 1 --gene-definition updownstream1000 --mode gene --min-genes 2.


## Mutant analysis  

### *Arabidopsis thaliana* mutants
T-DNA sequence-indexed lines of *A. thaliana* was obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/). In addition to Columbia-0 (Col-0) wild type, we ordered four mutant lines per gene for three candidate genes, *MYB26* (AT3G13890), *EPFL3* (AT3G13898), and a putative ribosomal gene (AT3G13882) (Table S2). Following the instruction [@o2015user], we checked the T-DNA insertion site of the mutant lines by PCR amplification and Sanger sequencing (see Table S2 for primer information). The mutant lines were back-crossed to the Col-0 wild type for three generations. Because some lines failed to germinate or had no mutations on the exon region during the back-crossing and confirmation, we finally obtained one confirmed line for each gene: SALK_112372.30.80.x (NASC Accession ID: N612372) for *MYB26*; SAIL_1220b_A10 (N844563) for *EPFL3*; and SALK_039481.29.99.f (N670586) for AT3G13882. All the three lines carried the T-DNA insertion on the exon (and a part of intron) region of the target gene.

### Laboratory experiments

To observe plant growth, we cultivated ten replicates (<- why 7 data points for MYB26 in Fig. 2?) of the three back-crossed mutant lines and the Col-0 wild type under a long-day condition (16h light/8h dark, T). Seeds were sown on a 8 cm$^3$ pot filled with the agricultural composts (Profi Substrat Classic CL ED73), and stratified at 4 $^\circ$C under a constant dark condition. The stratified seeds were then transferred to the long day condition. Seedlings were grown for 20 days. The rosette diameter (cm) was recorded as an index of plant size before aphids were released as described next. Days to flowering i.e., flowering time was also recorded during the aphid experiment as described next.  

To assess the likelihood of aphid colonization on the mutant plants, we then enclosed the potted plants separately with a mesh net, and released five individuals of the turnip aphid *L. erysimi* on each plant. The experimental aphids were derived from a source population established by the previous study [@barbour2022keystone]. The enclosed plants were incubated under the long-day condition. The number of aphids was counted by eyes 3, 7, 10, and 14 days after the release of aphids.  

### Data analysis  

We used generalized linear models (GLM) to test phenotypic differences between each mutant and the Col-0 wild type. Multiple comparisons were corrected using the Bonferroni method. The plant size and flowering time were analyzed using GLMs with Gaussian distribution, which were equivalent to standard linear models. The number of aphids i.e., the count response was analyzed using GLMs with Poisson error structure and a log link function. Wald-tests were used to calculate $p$-values from GLMs.


# Results & Discussion  


## Field GWAS of the aphid abundance   

We observed the two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*, occurring on the 196 accessions of *A. thaliana* during early summer in Zurich. These aphids more likely colonized on bolted accessions than non-bolted accessions (non-bolted and bolted plants = 0 and 7 aphids in median, respectively; Mann-Whitney's $U$-test, $U = 124158, p < 10^{-15}$), indicating that the presence of flowering stem was highly significantly associated with the aphid abundance. The pseudo-heritability $h^2$ of the aphid number was 0.7. The large heritability suggests that the observed trait is likely under genetic control and thus deserves further association mapping.   

We then performed GWAS using the accelerated mixed model that corrects a kinship structure. Regarding the aphid number, we observed a significant SNP above the genome-wide Bonferroni threshold (chr3-4579292, $p<10^{-8}$,  MAF=0.026: Fig. [1](#fig:ManPlot){reference-type="ref"}) in an intergenic region. When comparing trait values between two alleles on the significant SNP marker, three of five accessions shared similar haplotypes from AT3G13870 to AT3G13890 locus (Fig. [S1](#fig:1001browser){reference-type="ref"}), spanning within a 10-kb kbp region. Several known genes were located near this genomic region: AT3G13870 locus, also known as *ROOT HAIR DEFECTIVE3* (*RHD3*), is known to regulate root hair developments [@schiefelbein1990genetic] and thereby results in delayed growth [@zhang2013root]. AT3G13890 locus is known to encode MYB26 transcription factor responsible for the anther dehiscence and male sterility [@mitsuda2006efficient]. AT3G13880 (*OTP72*) locus itself has no visible phenotype, but one allele *otp72-2* is known to affect gene the expression level of *RHD3* [@chateigner2013domainsz]. Known functions of these candidate genes led us to further hypothesize that genes involved in growth or reproduction have side effects on aphid colonization on a plant stem.  

To estimate known gene functions associated with the aphid numbers, we also performed GO enrichment analysis for SNPs having the top 1% score of -log$_10$($p$). We detected two significant GOs, "DNA-binding transcription factor activity" and "positive regulation of transcription, DNA-templated" (FDR-adjusted $p<0.05$). Although the other GOs were not significant after the FDR correction, the top 22 categories included GOs involving defense, growth, and reproduction, such as "positive regulation of salicylic acid mediated signaling pathway", "positive regulation of leaf senescence", "pollen tube development" (non-adjusted $p<0.01$: Fig. [S2](#fig:gomap){reference-type="ref"}). The results of GO enrichment analysis support the relevance of plant life-history traits as well as defense signaling to the aphid numbers. 

Our field GWAS detected a significant peak and growth-related genes, such as *RHD3*, associated with the aphid abundance. While the most individuals of *A. thaliana* bloom in spring [@thompson1994spatiotemporal; @taylor2017interacting], some flowering individuals remain until late spring and inhabited by specialist aphids [@sato2019plant]. Our GWAS population could simulate aphid colonization on the late cohort with various accessions, where plants without inflorescence might escape from aphids. A recent laboratory study has also shown that side effects of a glucosinolate biosynthesis gene *AOP2* on plant growth alter plant's capacity to harbor aphids and their predators on *A. thaliana* [@barbour2022keystone]. Although we did not detect *AOP2* near the GWAS peak, our field study agrees with the notion that genes associated with plant growth can structure populations or communities of associated organisms.  


## Mutant growth and aphid colonization in a laboratory  

A putative ribosomal gene (AT3G13882), *EPIDERMAL PATTERNING FACTOR LIKE 3* (*EPFL3*: AT3G13898), and *MYB26* were located nearby the significant SNP (chr3-4579292). Thus, we cultivated single-gene mutants of these three genes to examine their visible phenotypes. After 20 days of growth period, the rosette size of the AT3G13882 mutant became 3.29 cm on average, which was significantly smaller than wild type plants having 5.38 cm on average (adjusted $p<0.001$ by Gaussian GLMs: Fig [2](#fig:mutant){reference-type="ref"}A,B). The other two mutant plants were slightly larger than the wild type (6.29 cm and 6.3 cm for *EPFL2* and *MYB26*, respectively), where the *EPFL3* mutant had a significantly larger size than the wild type (adjusted $p<0.01$: Fig [2](#fig:mutant){reference-type="ref"}A,B). Consistent with these differences of the initial size, the AT3G13882 mutant took 38.8 days on average until flowering, which was significantly longer than 30.8 days to flowering for the wild type (adjusted $p<0.001$: Fig [2](#fig:mutant){reference-type="ref"}A,C). Corresponded to the larger initial size than the wild type, the *EPFL3* and *MYB26* mutants showed earlier flowering than the wild type plants (27.5 days and 23.57 days for *EPFL3* and *MYB26*, respectively: adjusted $p<0.01$: Fig. [2](#fig:mutant){reference-type="ref"}D).  

To test whether the delayed growth could prevent aphid colonization, we then released *Lipaphis erysimi*, one of the two aphid species observed in the field, on mutant plants. One week after the release, aphids more likely failed to colonize on the AT3G13882 mutant than on the wild type (adjusted $p<0.001$ by Poisson GLMs), while *EPFL3* and *MYB26* mutants hosted similar or larger numbers of aphids comparing to wild type plants (Fig [2](#fig:mutant){reference-type="ref"}D). The failure of colony establishments during the former period led to the same patterns until 14 days after the release (Fig [S3](#fig:aphid_stat){reference-type="ref"}), though the levels of statistical significance became larger near the end of experiment likely because over-dispersion of the aphid numbers became severe.     

Our laboratory experiment showed that a mutant of a putative ribosomal gene experienced the severe delay of growth and thereby could escape from aphid colonization. While ribosomal genes were traditionally considered housekeeping genes of the protein synthesis machinery, growing number of studies have shown that mutants of ribosome-related genes exhibit a wide variety of growth and reproductive phenotypes, such as the reduction of leaf cell number [@fujikura2009coordination], reduced root length [@creff2010two], the reduction of pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen]. Some of these studies reported a pleiotropy of a ribosomal gene on the plant growth and pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen], where natural alleles could alleviate pleiotrophic growth defects [@tsuchimatsu2020adaptive]. Our findings from AT3G13882 locus adds insights into the growth deterioration due to ribosomal gene mutations, although natural variants responsible for the delayed growth have yet to be identified.  

Other than the putative ribosomal gene, mutants of *EPFL3* and *MYB26* exhibited moderate phenotypes of early growth and flowering compared to the wild type. EPFL3 is one of EPIDERMAL PATTERNING FACTOR-LIKE (EPFL) family peptides which are known to control stomatal patterning [@hunt2010signalling], leaf morphogenesis [@tameshige2016secreted], inflorescence development [@abrash2011generation], though biological roles of EPFL3 are still unknown. *MYB26* is more likely to affect flowering than growth (Fig. [2](#fig:mutant){reference-type="ref"}B,C), because this gene is known to encode a transcription factor specifically expressed in reproductive organ [@mitsuda2006efficient]. It was thus possible that mutants of these two genes exhibit the altered phenotypes of growth, flowering, and resultant aphid abundance; however, the phenotypes of these two mutants were not so severe as those of the ribosomal gene AT3G13882 (Fig. [2](#fig:mutant){reference-type="ref"}D).   

## Conclusion  

Overall, our field GWAS and laboratory experiment together highlight the genetic architecture underlying the side effects of plant life-history traits on herbivore abundance. While it is widely accepted that plant genetic variation governs herbivore abundance and communities in the field [@johnson2009heritability; @barbour2015multiple; @sato2019plant], a keystone gene shaping the ecological communities was not identified until recently [@barbour2022keystone]. The joint approach using field GWAS and mutant analyses may broaden the opportunity to investigate the function of keystone genes under field conditions.  

# Acknowledgements  
The authors thank L. Mohn,  K.K. Thomsen, and all members of Shimizu Group for their help with the establishment of field plots. This study was supported by the University of Zurich through the University Research Priority Program "Global Change and Biodiversity"; Japan Science and Technology Agency (Grant numbers JPMJCR16O3 to KKS and JPMJPR17Q4 to YS); and zzzzzz.  

# Data avaiability  
The data and codes are available at the GitHub repository (https://github.com/yassato/AraAphidGWAS). The published version is deposited on Zenodo (doi::xxxxxx).    

# Competing interests  
The authors declare no conflicts of interests concerning this study.  

# Tables & Figures 

![Figure 1. GWAS of the aphid abundance on 196 *A. thaliana* accessions grown in the field. Manhattan plot shows the associaiton score of -log$_10$($p$) against five choromosomes of *A. thaliana* at MAF cut-off = 0.025, where a horizontal dashed line indicates the genome-wide Bonferroni threshold at $p=0.05$. QQ-plot shows relationships between the observed and expected -log$_10$($p$) values, where a solid line indicates randomly expected -log$_10$($p$) and the shaded area corresponds to its 95\% confidence intervals. The upper inset focuses on the top-scroing SNP at Chr3-4579292, and desplays the position of candidate genes (left) or compares phenotype values i.e., log(no. of aphids + 1) between the two SNP alleles (right).](../figures/database_snapshot/Slide5.png){#fig:ManPlot}  

![Figure 2. The Col-0 wild type and three mutants of *Arabidopsis thaliana* (A) showing the phenotypes of initial size (B), flowering time (C), and aphid colonization one week after the release (D) in a laboratory. Asterisks above each mutant indicate adjusted $p$-values by GLMs in comparison with the wild type, WT; *** $p<0.001$, ** $p<0.01$, * $p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/mutant.pdf){#fig:mutant}  


# Supplementary Materials  

![Figure S1. A snapshot of the genomic region near Chr3-4579292 in the 1001 Genome Browser (http://signal.salk.edu/atg1001/3.0/gebrowser.php). The upper four accessions carried a rare allele susceptible to aphids (inset of Fig. [1](#fig:ManPlot){reference-type="ref"}). The accessions listed below Col-0 carried a major allele and harbored no aphids in the field GWAS.](../figures/database_snapshot/Slide3.png){#fig:1001browser}  

![Figure S2. REVIGO treemap summarizing suggestive GOs detected by the Gowinda program. The panel size corresponds to -log$_10$($p$). Colors indicate similar GO families summarized by REVIGO.](../figures/revigo_treemap.pdf){#fig:gomap}  

![Figure S3. The number of aphids during the later period of incubation. Asterisks indicate significant difference between each mutant and the wild type with Poisson GLMs: *** $p<0.001$, ** $p<0.01$, * $p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/aphid_last.pdf){#fig:aphid_last}  


Table S1. List of GWAS accessions and phenotypes.  

Table S2. List of mutant lines and primer information.   

# References
