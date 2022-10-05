---
title: Genome-wide association study highlights escape from aphids by delayed growth in *Arabidopsis thaliana*
output:
  word_document: default
  pdf_document: default
  html_document: default
bibliography: bibliography.bib
csl: proceedings-of-the-royal-society-b.csl
---
  
**Chongmeng Xu**^1†^  
**Yasuhiro Sato**^1,2†\*^  
**Misako Yamazaki**^1^   
**Matthew A. Barbour**^1,3^   
**...(other co-authors from IEU, if any)...**^1^   
**Kentaro K. Shimizu**^1,4\*^    

^1^ Department of Evolutionary Biology and Environmental Studies, University of Zurich, Winterthurerstrasse 190, 8057 Zurich, Switzerland    
^2^ Research Institute for Food and Agriculture, Ryukoku University, Yokotani 1-5, Seta Oe-cho, Otsu, Shiga 520-2194, Japan  
^3^ Université de Sherbrooke, Canada  
^4^ Kihara Institute for Biological Research, Yokohama City University, Maioka 641-12, Totsuka-ward, Yokohama 244-0813, Japan  
^†^ *These authors equally contributed to this study.*  
^\*^ *Co-correspondence; Y.S. (yasuhiro.sato@uzh.ch); K.K.S. (kentaro.shimizu@ieu.uzh.ch)*  

# Abstract  
Plant phenological and architectural traits modulate the likelihood of herbivore settlement, but their key genes remain largely unknown. 
Here, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. 
Near a significant peak of GWAS, we found growth-related genes, such as *ROOT HAIR DEFECTIVE3*, and candidate genes with unknown functions. 
Out of these unknown genes, a mutant of the putative ribosomal gene (AT3G13882) exhibited far slower growth and later flowering phenotype than a wild type under laboratory condition. 
The turnip aphid *Lipaphis erysimi* failed to settle a colony on the ribosomal gene mutant, likely due to 61\% smaller size of this mutant than the wild type. 
These findings suggest that the side effects of growth-related genes on herbivore abundance may be more important than currently recognized.

# Introduction
Plants are attacked by herbivores across their life cycle in natural environments. 
While chemical and physical traits have long been the main focus of anti-herbivore defense [@schoonhoven2005insect], plant life-history traits also account for herbivory variation in field environments [@carmona2011plant; @barton2017future].
For example, phenological changes (e.g., early flowering) can allow plants to escape from seasonal herbivory [@kawagoe2010escape; @marquis2021escape]. 
Plants’ visibility for herbivores, namely plant apparency [@feeny1976plant], also changes across plant ontogeny (e.g., from vegetative to reproductive phase), which alters the risk of herbivore attacks [@zverev2017ontogenetic; @barton2017future]. 
By focusing on genetic variation within a plant species, several studies have shown that plant phenological and architectural traits shape heritable variation in herbivory [@johnson2009heritability; @barbour2015multiple; @sato2019plant], yet only a few key genes have been identified so far [@barbour2022keystone].

Genome-wide association study (GWAS) provides a powerful approach to dissecting the genetic architecture of ecologically important traits [@anderson2011ecological; @santure2018wild] and identifying novel genes from natural phenotypic variation [@fujii2019stigmatic; @tsuchimatsu2020adaptive]. 
However, controlled laboratory conditions are unlikely to reflect outdoor environments where interspecific interactions typically occur [@honjo2020seasonality; @sato2019transcriptional].
This fact emphasizes the importance of *in natura* study of functional genes [@shimizu2011plant; @kudoh2016molecular; @yamasaki2017genomics; @stockenhuber2021uv].
To achieve this goal, it is necessary to conduct GWAS under field conditions.

*Arabidopsis thaliana* is a model plant species distributed throughout Europe and naturalized around the world. 
While *A. thaliana* usually blooms in spring after over-wintering, some cohorts have overlapping life cycles from spring to autumn [@thompson1994spatiotemporal; @taylor2017interacting; @stockenhuber2021uv].
When *A. thaliana* plants emerge from late spring to early summer, they are threatened by various herbivores [@mosleh2009herbivory; @sato2019plant]. 
Of the diverse insect herbivores, aphids are known as major herbivores occurring across a natural distribution range of *A. thaliana* [@zust2012natural]. 
Because aphids often suck phloem saps from leaf veins and flowering stems, we hypothesized that plant life-history traits may play a key role in harboring aphids under field conditions.  

To reveal the genetic architecture of aphid herbivory, we here combined GWAS and mutant analysis in *A. thaliana*. 
We first conducted GWAS of aphid abundance on 196 *A. thaliana* accessions grown in a field site in Zurich, Switzerland. 
We discovered several known genes involved in delayed growth, in addition to candidate genes with unknown functions, near a peak of GWAS. 
To further test the candidate genes, we then cultivated and released the turnip aphid *Lipaphis erysimi* on *A. thaliana* mutants.  

# Materials & Methods

## Field GWAS      

### Plant genotypes  
We obtained *Arabidopsis thaliana* genotypes that were selfed and maintained as inbred lines, called "accession", from the Arabidopsis Biological Resource Center (<https://abrc.osu.edu/>). 
We used almost the same set of 196 *A. thaliana* accessions as a previous study [@sato2021neighbor], all of which were genotyped by RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects. 
The list of accessions and phenotypes measured in this study is available in Table S1.  

### Field experiment    
To observe aphids in a simulated late cohort, we exposed the *A. thaliana* accessions to field environment from 4 to 25 July 2018.
This field experiment was conducted at Zurich, Switzerland, to use a field site within a native distribution range of *A. thaliana*. 
We initially cultivated *A. thaliana* in a laboratory under a short-day condition in order to keep all the plants in the vegetative stage at the start of the field experiment. 
Seeds were sown on 33-mm diameter Jiffy-seven^(R)^ pots and stratified under a constant dark 4$^\circ$C condition for a week. Seedlings were grown for 6 weeks under 8L:16D cycle with 20$^\circ$C air temperature. 
Plants were then potted in a plastic pot filled with mixed soils of agricultural composts (Profi Substrat Classic CL ED73, Einheitserde Co.) and perlites with compost to perlite ratio of 3:1 litter volume. 
Eight replicates of the 196 accessions were then transferred to the outdoor garden at the University of Zurich-Irchel (47$^\circ$ 23'N, 8$^\circ$ 33'E). 
Aphids were counted by a single observer every two or three days. 
To examine whether the aphid abundance differed between plants with and without flowering stems, we also recorded the presence or absence of bolting two weeks after the start of field experiment.


### Data analysis  
GWAS was performed using the GWA-portal website (https://gwas.gmi.oeaw.ac.at) [@seren2018gwa]. 
The target phenotype was the maximum number of any species of aphids per plant throughout the experiment.
The imputed full-sequence dataset was chosen as SNP data for the 196 accessions.
Pseudo-heritability $h^2$ was calculated for the target phenotype before association mapping. 
Accelerated mixed models were used for association mapping with a correction of kinship structure.
The number of aphids was ln($x+1$)-transformed to improve normality. 
Input phenotype data are available as supplementary material. After the association mapping, candidate genes were searched within ca. 10 kb near a focal SNP.  

## Mutant analysis  

### *Arabidopsis thaliana* mutants
T-DNA sequence-indexed lines of *A. thaliana* were obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/). 
In addition to Columbia-0 (Col-0) wild type, we ordered four mutant lines per gene for three candidate genes, *MYB26* (AT3G13890), *EPFL3* (AT3G13898), and a putative ribosomal gene (AT3G13882) (Table S2).
Following the instruction [@o2015user], we checked the T-DNA insertion site of the mutant lines by PCR amplification and Sanger sequencing (see Table S2 and S3 for primer information). 
The mutant lines were back-crossed to the Col-0 wild type for three generations.
Because some lines failed to germinate or had no mutations on the exon region during the back-crossing and confirmation, we finally obtained one confirmed line for each gene: SALK_112372.30.80.x (NASC Accession ID: N612372) for *MYB26*; SAIL_1220b_A10 (N844563) for *EPFL3*; and SALK_039481.29.99.f (N670586) for AT3G13882. 
All three lines carried the T-DNA insertion on the exon (and a part of the intron) region of the target gene.

### Laboratory experiments

To observe plant growth, we cultivated 7 - 10 replicates of the three back-crossed mutant lines and the Col-0 wild type under a long-day condition (16h light/8h dark, 22$^\circ$C/20$^\circ$C air temperature). 
Because the mutant of the *MYB26* gene was sterile due to the lack of anther dehiscence [@mitsuda2006efficient], the pollen was broken physically and self-crossed to stigma by hand. 
This resulted in a small number of seeds harvested; thus, only seven replicates were prepared for this *myb26* line. 
Seeds were sown on an 8 cm$^3$ pot filled with the agricultural composts (Profi Substrat Classic CL ED73), and stratified at 4 $^\circ$C under a constant dark condition for a week. 
The stratified seeds were then transferred to the long day condition. Seedlings were grown for 20 days.
The rosette diameter (cm) was recorded as an index of plant size before aphids were released as described next. 

To assess the likelihood of aphid colony establishments on the mutant plants, we released the turnip aphid *L. erysimi* on the wild type and mutants of *A. thaliana*.
The potted plants were separately enclosed with a mesh net. 
Five wingless females of adult aphids were released on each plant.
The experimental aphids were derived from a source population established by a previous study [@barbour2022keystone].
The enclosed plants were incubated under the long-day condition.
The number of aphids per plant was counted by eyes 3, 7, 10, and 14 days after the release of aphids. 
We did not count aphids that escaped outside the area of a plant. 
Days to flowering i.e., flowering time was also recorded during the aphid experiment.  

### Data analysis  

We used generalized linear models (GLM) to test phenotypic differences between each mutant and the Col-0 wild type.
The plant size and flowering time were analyzed using GLMs with Gaussian distribution, which was equivalent to standard linear models. 
The number of aphids i.e., the count response was analyzed using GLMs with Poisson error structure and a log link function. 
Wald-tests were used to calculate $p$-values from GLMs. 
Multiple comparisons were corrected using the Bonferroni method. 
The failure of aphid colonization at the initial stage amplified over-dispersion of the aphid number at later time points, but negative binomial GLMs could not be converged in some pairs due to small sample size. 
We therefore applied Poisson GLMs for the modest dispersion 7-days after the release (Fig. [2](#fig:mutant){reference-type="ref"}D), while the results of later time points were provided as supplementary information (Fig [S3](#fig:aphid_stat){reference-type="ref"}). 
All statistical analyses were performed using R version 4.0.3 [@Rcite].  

# Results and Discussion

## Field GWAS of the aphid abundance   

To monitor aphid abundance as well as visible plant traits, we transplanted 196 *A. thaliana* accessions in the field. 
Starting from vegetative phase, 38\% of individual plants initiated bolting two weeks after the transplant. 
The two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*, mainly occurred on *A. thaliana*. 
The total number of aphid individuals throughout the season was more abundant on bolted accessions than on non-bolted accessions (non-bolted and bolted plants = 0 and 7 aphids in median, respectively; Mann-Whitney's $U$-test, $U = 124158, p < 10^{-15}$), indicating that the presence of flowering stem was significantly associated with the aphid abundance. 
In addition, we also distinguished the abundance of winged and wingless aphids in order to infer ecological processes behind the aphid colonization on *A. thaliana*. 
Winged and wingless aphids initially colonized vegetative plants three days after the transplant, but many of these aphids did not establish a colony in subsequent monitoring (the days between 07 and 10 July 2018: Fig. [S1](#fig:aphid_day){reference-type="ref"}). 
This additional observation suggests that colonized aphids do not always establish a colony and thereby the success of the colony establishment also depends on the host suitability after colonization.    

The total number of aphids had high heritability among the plant accessions ($h^2 = 0.7$), indicating that this trait was likely under genetic control and thus deserved further GWAS analyses.
To detect SNPs strongly associated with the aphid number, we then performed GWAS using the accelerated mixed model. 
Regarding the aphid number, we detected a significant SNP in an intergenic region above the genome-wide Bonferroni threshold (chr3-4579292, $p<10^{-8}$,  MAF=0.026: Fig. [1](#fig:ManPlot){reference-type="ref"}A,B).
This significant SNP also had a far stronger score than randomly expected (Fig. [1](#fig:ManPlot){reference-type="ref"}C). 
When comparing the aphid number between two alleles on the significant SNP, three of five accessions shared similar haplotypes spanning within a 10-kb kbp region from AT3G13870 to AT3G13890 locus (Fig. [S2](#fig:1001browser){reference-type="ref"}). 
Two growth-related genes were located near this genomic region: AT3G13870 locus, also known as *ROOT HAIR DEFECTIVE3* (*RHD3*), is known to regulate root hair developments [@schiefelbein1990genetic] and thereby results in delayed growth [@zhang2013root]. 
AT3G13880 (*OTP72*) locus itself has no visible phenotype, but one allele *otp72-2* is known to affect gene the expression level of *RHD3* [@chateigner2013domainsz]. 
In addition, AT3G13890 locus is known to encode the MYB26 transcription factor responsible for the anther dehiscence and male sterility [@mitsuda2006efficient]. 
Known functions of these candidate genes led us to further hypothesize that genes involved in growth or reproduction exert side effects on the establishment of an aphid colony.  

## Mutant plant growth and aphid colony establishment in the laboratory  

A putative ribosomal gene (AT3G13882), *EPIDERMAL PATTERNING FACTOR LIKE 3* (*EPFL3*: AT3G13898), and *MYB26* were located nearby the significant SNP (chr3-4579292). 
We therefore cultivated single-gene mutants of these three genes to examine their visible phenotypes, including growth size and flowering time. 
After 20 days of growth, the AT3G13882 mutant had a significantly smaller size than the wild type (3.29 and 5.38 cm on average for AT3G13882 mutant and wild type, respectively; adjusted $p<0.001$ by Gaussian GLMs: Fig [2](#fig:mutant){reference-type="ref"}A,B), showing the delayed growth of AT3G13882 mutant. 
The other two mutant plants were slightly larger than the wild type (6.29 cm and 6.3 cm for *EPFL2* and *MYB26*, respectively), where the *EPFL3* mutant had a significantly larger size than the wild type (adjusted $p<0.01$: Fig [2](#fig:mutant){reference-type="ref"}A,B). 
Consistent with these differences in the initial size, the AT3G13882 mutant exhibited significantly later flowering than the wild type (38.8 and 30.8 days on average for AT3G13882 mutant and wild type, respectively; adjusted $p<0.001$: Fig [2](#fig:mutant){reference-type="ref"}A,C). 
Corresponding to the larger initial size than the wild type, the *EPFL3* and *MYB26* mutants showed earlier flowering than the wild type plants (27.5 days and 23.57 days for *EPFL3* and *MYB26*, respectively: adjusted $p<0.01$: Fig. [2](#fig:mutant){reference-type="ref"}C).

The difference of growth and subsequent flowering among the three mutants led us to test whether the delayed or early growth could prevent the establishment of aphid colonies after colonization. 
To examine the establishment process after aphid colonization, we released wingless individuals of *Lipaphis erysimi* on vegetative plants of the mutant lines or the wild type. 
One week after the release, aphids were more likely to failed colonizing the AT3G13882 mutant than on the wild type (adjusted $p<0.001$ by Poisson GLMs; Fig [2](#fig:mutant){reference-type="ref"}D), showing adversarial effects of delayed growth on the aphid colony establishment. 
In addition, *EPFL3* and *MYB26* mutants hosted similar or larger numbers of aphids compared to wild type plants (Fig [2](#fig:mutant){reference-type="ref"}D). 
The failure of colony establishments during the former period resulted in the same patterns until 14 days after the release (Fig [S3](#fig:aphid_stat){reference-type="ref"}).  

## Genetic implications for the temporal escape from herbivory

Our field GWAS and laboratory experiment together highlight the genetic architecture underlying side effects of plant life-history traits on herbivore abundance. 
It is widely recognized that plant genetic variation governs herbivore abundance and communities [@johnson2009heritability; @barbour2015multiple; @sato2019plant], but a keystone gene shaping the ecological communities was not identified until recently [@barbour2022keystone]. 
Barbour et al. [@barbour2022keystone] have experimentally shown that side effects of a glucosinolate biosynthesis gene *AOP2* on plant growth alter *A. thaliana*'s capacity to harbor aphids and their parasitoids. 
Although we did not detect *AOP2* near the GWAS peak, our study supports the notion that genes associated with plant growth can structure populations or communities of associated organisms.  

While ribosomal genes have long been considered housekeeping genes of the protein synthesis machinery, mutants of ribosome-related genes exhibit a wide variety of growth and reproductive phenotypes. 
For example, previous studies reported the reduction of leaf cell number [@fujikura2009coordination], reduced root length [@creff2010two], and the reduction of pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen] regarding ribosomal gene mutations.
Our findings from the putative ribosomal gene AT3G13882 add insights into biotic interactions besides growth deterioration. Other than the putative ribosomal gene, mutants of *EPFL3* and *MYB26* exhibited moderate phenotypes of early growth and flowering compared to the wild type.
Though biological roles of EPFL3 are still unknown, this is one of EPIDERMAL PATTERNING FACTOR-LIKE (EPFL) family peptides that are involved in stomatal patterning [@hunt2010signalling], leaf morphogenesis [@tameshige2016secreted], and inflorescence development [@abrash2011generation]. 
*MYB26* is more likely to affect flowering than growth (Fig. [2](#fig:mutant){reference-type="ref"}B,C) because this gene is known to encode a transcription factor specifically expressed in a reproductive organ [@mitsuda2006efficient]. 
It was thus possible that mutations on *EPFL3* and *MYB26* altered growth or flowering, although their effects on aphid abundance were not so severe as those of the putative ribosomal gene (Fig. [2](#fig:mutant){reference-type="ref"}D).  

Overall, our study suggests the importance of growth-related genes in plant-herbivore interactions in the field. 
However, we are still unsure whether the T-DNA mutation on the putative ribosomal gene (AT3G13882) represents natural variants responsible for the delayed growth and reduced aphid abundance.
Regarding another ribosomal gene *REDUCED POLLEN NUMBER1* (*RDP1*), previous studies reported pleiotropy of this gene on plant growth and pollen number in *A. thaliana* [@tsuchimatsu2020adaptive; @kakui2022pollen]. Natural alleles of *RDP1* could alleviate pleiotropic growth defects [@tsuchimatsu2020adaptive]. 
In our study, the other growth-related genes or other mutations of AT3G13882 might have reduced the aphid abundance. 
Further experimental tests, such as quantitative complementation [@tsuchimatsu2020adaptive], will be needed to identify natural causal variants that alter the aphid abundance through delayed growth.  

# Data availability  
The data and codes are available at the GitHub repository (https://github.com/yassato/AraAphidGWAS). 
The published version is deposited on Zenodo or Dryad (doi::xxxxxx).    

# Authors' contributions
C.X.: laboratory investigation, project administration, data curation, draft writing; Y.S.: conceptualization, funding acquisition, project administration, supervision, field investigation, data curation, formal analysis, draft writing, review and editing; M.Y.: laboratory investigation, methodology, project administration, review and editing; M.A.: conceptualization, resources, review and editing; K.K.S.: conceptualization, funding acquisition, project administration, supervision, draft writing, review and editing.

# Competing interests  
The authors declare no conflicts of interests concerning this study.  

# Acknowledgements  
The authors thank L. Mohn, K.K. Thomsen, and all members of Shimizu group for their help with the establishment of field plots. 

# Funding
This study was supported by the University of Zurich through the University Research Priority Program for "Global Change and Biodiversity" and Japan Science and Technology Agency (Grant numbers JPMJCR16O3 to KKS and JPMJPR17Q4 to YS).  


# Figures 

![Figure 1. GWAS of the aphid abundance on 196 *A. thaliana* accessions grown in the field. (A) A genomic region near the top-scoring SNP at Chr3-4579292 desplays the position of candidate genes. Red colors highlight genes analyzed in Figure [2](#fig:mutant){reference-type="ref"}. (B) Manhattan plot shows the association score of -log$_10$($p$) across five chromosomes of *A. thaliana* with MAF cut-off at 0.025. A horizontal dashed line indicates the genome-wide Bonferroni threshold at $p=0.05$. (C) QQ-plot shows relationships between the observed and expected -log$_10$($p$) values. A solid line indicates randomly expected -log$_10$($p$) and the shaded area corresponds to its 95\% confidence intervals.](../figures/fig1_comb.png){#fig:ManPlot}  

![Figure 2. The Col-0 wild type and three mutants of *Arabidopsis thaliana* (A) showing the phenotypes of initial size (B), flowering time (C), and aphid colonization one week after the release (D) in a laboratory. Asterisks above each mutant indicate adjusted $p$-values by GLMs in comparison with the wild type, WT; *** $p<0.001$, ** $p<0.01$, * $p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/mutant.png){#fig:mutant}  


# Supplementary Materials  

![Figure S1. Temporal patterns of the emergence of wingless and winged aphids during the field GWAS experiment. X-axes shows the number of winged (top row) or wingless (bottom row) aphids at current monitoring day (t=year-month-day). Y-axes show the total number of both winged and wingless aphids at the next monitoring date (t+1). A single point corresponds to an individual plant. The number of aphids represents the total number of individuals of *Lipaphis erysimi* and *Brevicoryne brassicae*.](../figures/aphid_No_per_day.pdf){#fig:aphid_day}  

![Figure S2. A snapshot of the genomic region near Chr3-4579292 in the 1001 Genome Browser (http://signal.salk.edu/atg1001/3.0/gebrowser.php). The upper four accessions in A carried a rare allele susceptible to aphids. The accessions listed below Col-0 carried a major allele and harbored no aphids in the field GWAS. Panel B displays log-transformed number of aphids between the major and rare allele at Chr3-4579292. ](../figures/1001browser.png){#fig:1001browser}  

![Figure S3. The number of aphids during the later period of incubation. Asterisks indicate significant difference between each mutant and the wild type with Poisson GLMs: *** $p<0.001$, ** $p<0.01$, * $p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range. The patterns remained almost the same as Figure [2](#fig:mutant){reference-type="ref"}D after the failure of aphid colonization. The levels of statistical significance became larger near the end of experiment due to severe over-dispersion. We thus provided results at the initial time point in the main text.](../figures/aphid_last.pdf){#fig:aphid_last}  


Table S1. List of GWAS accessions and phenotypes.  

Table S2. List of mutant lines examined in this study. Red text highlight three-times backcrossed lines.   

Table S3. List of primers to check the T-DNA insertion. The primers were designed using T-DNA Primer Design (http://signal.salk.edu/tdnaprimers.2.html).  

# References
