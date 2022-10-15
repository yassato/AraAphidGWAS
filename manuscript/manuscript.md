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
Field studies have shown that plant phenological and architectural traits affect herbivore settlement to host plants.
Yet, little is known about key genes allowing plants to escape from herbivory. 
Here, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. 
This field GWAS detected a significant peak on the third chromosome of *A. thaliana*. 
Out of candidate genes near the peak, a mutant of the putative ribosomal gene (AT3G13882) exhibited slower growth and later flowering phenotype than a wild type under laboratory condition. 
Likely due to 61\% smaller size of this ribosomal gene mutant than the wild type, the turnip aphid *Lipaphis erysimi* failed to settle a colony on the ribosomal gene mutant. 
These findings suggest that roles of growth-related genes in modulating herbivore abundance may be more important than currently recognized.

# Introduction
Plants are attacked by herbivores across their life cycle in natural environments. 
While chemical and physical traits have long been the main focus of anti-herbivore defense [@schoonhoven2005insect], plant life-history traits also account for herbivory variation in field environments [@carmona2011plant; @barton2017future].
For example, phenological changes (e.g., early flowering) can allow plants to escape from seasonal herbivory [@kawagoe2010escape; @marquis2021escape]. 
The visibility of plants for herbivores, namely plant apparency [@feeny1976plant], also changes across plant ontogeny (e.g., from vegetative to reproductive phase), which alters the risk of herbivore attacks [@zverev2017ontogenetic; @barton2017future]. 
By focusing on genetic variation within a plant species, several studies have shown that plant phenological and architectural traits shape heritable variation in herbivory [@johnson2009heritability; @barbour2015multiple; @sato2019plant].

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
To further test candidate genes, we then cultivated and released the turnip aphid *Lipaphis erysimi* on *A. thaliana* mutants.  

# Materials & Methods

## Field GWAS      

### Plant genotypes  
We obtained *Arabidopsis thaliana* genotypes that were selfed and maintained as inbred lines, called "accession", from the Arabidopsis Biological Resource Center (<https://abrc.osu.edu/>). 
We used almost the same set of 196 *A. thaliana* accessions as a previous study [@sato2021neighbor], without two trichome mutants and one additional wild accession. 
All of these accessions were genotyped by RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects. 
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
The target phenotype was the maximum number of any species of individual aphids per plant throughout the experiment.
The imputed full-sequence dataset registered in the GWA-portal was chosen as SNP data for the 196 accessions.
Pseudo-heritability $h^2$ was calculated for the target phenotype before association mapping. 
Accelerated mixed models were used for association mapping with a correction of kinship structure.
The number of aphids was ln($x+1$)-transformed to improve normality. 
Input phenotype data are available as supplementary material. 
After the association mapping, candidate genes were searched within ca. 5 kb near a focal SNP. 
To inspect organ-specific expression levels of candidate genes, we referred to Klepikova Arabidopsis Atlas [@klepikova2016high] via The Arabidopsis Information Resource (<https://www.arabidopsis.org/>).  

## Mutant analysis  

### *Arabidopsis thaliana* mutants
T-DNA sequence-indexed lines of *A. thaliana* were obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/). 
In addition to Columbia-0 (Col-0, NASC Accession ID: N70000) wild type, we ordered four mutant lines for a putative ribosomal gene (AT3G13882) (Table S2). 
Following the instruction [@o2015user], the mutant lines were selected according to the criteria either (1) insertion site was confirmed in an exon of the corresponding gene (Fig. [S1](#fig:tDNA){reference-type="ref"}) or (2) insertion site was confirmed in an intron of the corresponding gene and the expression level of the corresponding gene was downregulated in the mutants compared to the Col-0 wild type (Fig. [S2](#fig:sqRT_PCR){reference-type="ref"}). 
The selected lines were back-crossed to the Col-0 wild type for three times. 
Because some lines failed to germinate during the back-crossing, we finally obtained one confirmed line of the SALK_039481 (NASC Accession ID: N670586) for AT3G13882. 

### Laboratory experiments

To observe plant growth, we cultivated ten replicates of the ribosomal gene mutant and the Col-0 wild type under a long-day condition (16h light/8h dark, 22$^\circ$C/20$^\circ$C air temperature). 
Seeds were sown on an 294 cm$^3$ (=7 $\times$ 7 $\times$ 6 cm) pot filled with the agricultural composts (Profi Substrat Classic CL ED73), and stratified at 4 $^\circ$C under a constant dark condition for a week. 
The stratified seeds were then transferred to the long day condition. Seedlings were grown for 20 days.
The rosette diameter (cm) was recorded as an index of plant size before aphids were released as described next. 

To assess the likelihood of aphid colony establishments on the mutant plants, we released the turnip aphid *L. erysimi* on the wild type and the mutant of *A. thaliana*.
The potted plants were separately enclosed with a mesh net. 
Five wingless females of adult aphids were released on each plant.
The experimental aphids were derived from a source population established by a previous study [@barbour2022keystone].
The enclosed plants were incubated under the long-day condition.
The number of aphids per plant was counted by eyes 3, 7, 10, and 14 days after the release of aphids. 
We did not count aphids that escaped outside the area of a plant. 
Days to flowering i.e., flowering time was also recorded during the aphid experiment.  

### Data analysis  

We used generalized linear models (GLM) to test phenotypic differences between the mutant and the Col-0 wild type.
The plant size and flowering time were analyzed using GLMs with Gaussian distribution, which was equivalent to standard linear models. 
The number of aphids i.e., the count response was analyzed using GLMs with Poisson error structure and a log link function. 
Wald-tests were used to calculate $p$-values from GLMs. 
The failure of aphid colonization at the initial stage amplified over-dispersion of the aphid number at later time points, but negative binomial GLMs could not be converged in some pairs due to small sample size. 
We therefore applied Poisson GLMs for the modest dispersion 7-days after the release (Fig. [2](#fig:mutant){reference-type="ref"}D), while the results of later time points were provided as supplementary information (Fig [S5](#fig:aphid_stat){reference-type="ref"}). 
All statistical analyses were performed using R version 4.0.3 [@Rcite].  

# Results

## Field GWAS of the aphid abundance   

To monitor aphid abundance as well as visible plant traits, we transplanted 196 *A. thaliana* accessions in the field. 
Starting from the vegetative phase, 38\% of individual plants initiated bolting two weeks after the transplant. 
The two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*, mainly occurred on *A. thaliana*. 
The aphid abundance was higher on bolted accessions than on non-bolted accessions (non-bolted and bolted plants = 0 and 7 aphids in median, respectively; Mann-Whitney's $U$-test, $U = 124158, p < 10^{-15}$), suggesting that plant life-cycle might be associated with plants' capacity to harbor aphids. 
In addition, we also distinguished the abundance of winged and wingless aphids in order to infer the colonization processes of aphids on *A. thaliana*. 
Winged and wingless aphids colonized vegetative plants until the first monitoring after the transplant, but many of these aphids did not establish a colony in subsequent monitoring (the days between 07 and 10 July 2018: Fig. [S3](#fig:aphid_day){reference-type="ref"}). 
This additional observation suggests that colonized aphids do not always establish a colony and thereby the success of the colony establishment also depends on the host suitability after colonization.    

The aphid abundance had high heritability among the plant accessions ($h^2 = 0.7$), indicating that this trait was likely under genetic control and thus deserved further association mapping in GWAS. 
Regarding the aphid abundance, our mapping detected a significant SNP in an intergenic region above the genome-wide Bonferroni threshold (chr3-4579292, $p<10^{-8}$,  MAF=0.026: Fig. [1](#fig:ManPlot){reference-type="ref"}A,B; see also Fig. [S4](#fig:qqplot){reference-type="ref"} for quantile-quantile plots). 
Nearby this significant SNP (chr3-4579292), we found three candidate genes, such as a putative ribosomal gene (AT3G13882), *EPIDERMAL PATTERNING FACTOR LIKE 3* (*EPFL3*: AT3G13898), and *MYB26*. 
Out of these three genes, the putative ribosomal gene (AT3G13882) is known to be highly expressed in vegetative organ such as leaves [@klepikova2016high]. 
The other two genes, *EPFL3* and *MYB26*, are known to be highly expressed only in reproductive organ such as anthers or pistils [@klepikova2016high]. 
Because aphids were unlikely to suck saps from anthers and pistils, we focused on the putative ribosomal gene (AT3G13882) for further investigation.  

## Mutant plant growth and aphid colony establishment in the laboratory  

To examine visible phenotypes of the ribosomal gene mutant (AT3G13882), we compared growth and flowering time of this mutant with the Col-0 wild type. 
After 20 days of growth, the AT3G13882 mutant had a significantly smaller size than the wild type ($p<0.001$ by Gaussian GLMs: Fig. [2](#fig:mutant){reference-type="ref"}A,B), showing the delayed growth of AT3G13882 mutant. 
The flowering time of the AT3G13882 mutant was also significantly later than the wild type ($p<0.001$: Fig. [2](#fig:mutant){reference-type="ref"}A,C). 
The slower growth and delayed flowering of the ribosomal gene mutant (AT3G13882) then led us to test whether the delayed growth could prevent the establishment of aphid colonies after colonization.  

To examine the establishment process after aphid colonization, we released wingless individuals of *Lipaphis erysimi* on vegetative plants of the ribosomal gene mutant (AT3G13882) and the wild type. 
One week after the release, aphids were more likely to failed colonizing the AT3G13882 mutant than on the wild type ($p<0.001$ by Poisson GLMs; Fig. [2](#fig:mutant){reference-type="ref"}D), showing adversarial effects of delayed growth on the aphid colony establishment.  


# Discussion
Previous field studies used mutant plants to show roles of particular functional genes in chemical defense (e.g., *LOX*s in *Nicotiana attenuata* [@kessler2004silencing; @schuman2015plant] or physical defense (*GLABRA1* in *A. thaliana* [@sato2019plant]) against herbivores. 
In contrast, our field GWAS offered a hypothesis-free approach to screen candidate genes responsible for herbivore abundance, which did not detect the known defense-related genes near its peak. 
This result implies that gene functions revealed under laboratory condition may not always reflect those under field environments [@zaidem2019evolutionary]. 
A previous meta-analysis also reported that plant phenological and architectural traits more likely explained herbivory variation than chemical or physical traits [@carmona2011plant]. 
The present findings therefore gain insights into the complexity of plant defense strategy in field environments.  

While ribosomal genes have long been considered housekeeping genes of the protein synthesis machinery, mutants of ribosome-related genes exhibit a wide variety of growth and reproductive phenotypes. 
For example, previous studies reported the reduction of leaf cell number [@fujikura2009coordination], reduced root length [@creff2010two], and the reduction of pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen] regarding ribosomal gene mutations.
In this context, our findings from the ribosomal gene AT3G13882 add insights into biotic interactions besides growth deterioration. 
However, we are still unsure whether the T-DNA mutation on the putative ribosomal gene (AT3G13882) represents natural variants responsible for the delayed growth and reduced aphid abundance. 
Regarding another ribosomal gene *REDUCED POLLEN NUMBER1* (*RDP1*), previous studies reported pleiotropy of this gene on plant growth and pollen number in *A. thaliana* [@tsuchimatsu2020adaptive; @kakui2022pollen]. 
Natural alleles of *RDP1* could alleviate pleiotropic growth defects [@tsuchimatsu2020adaptive]. 
In our study, the other growth-related genes or other mutations of AT3G13882 might have reduced the aphid abundance. 
Further experimental tests, such as quantitative complementation [@tsuchimatsu2020adaptive], will be needed to identify natural causal variants that alter the aphid abundance through delayed growth.  

Overall, our field GWAS and laboratory experiment suggest the importance of plant life-history traits in herbivore abundance. 
It is widely recognized that plant genetic variation governs herbivore abundance and communities [@johnson2009heritability; @barbour2015multiple; @sato2019plant], but a keystone gene shaping the ecological communities was not identified until recently [@barbour2022keystone]. 
Barbour et al. [@barbour2022keystone] have experimentally shown that pleiotropic effects of a glucosinolate biosynthesis gene *AOP2* on plant growth alter *A. thaliana*'s capacity to harbor aphids and their parasitoids. 
Our candidate genes might also have pleiotropy on plant growth and secondary metabolism; however, our findings support the notion that genes associated with plant growth can structure populations or communities of associated organisms.  

# Data availability  
The data and codes are available at the GitHub repository (https://github.com/yassato/AraAphidGWAS). 
The published version is deposited on Zenodo or Dryad (doi::xxxxxx).    

# Authors' contributions
C.X.: laboratory investigation, project administration, data curation, draft writing; Y.S.: conceptualization, funding acquisition, project administration, supervision, field investigation, data curation, formal analysis, draft writing, review and editing; M.Y.: laboratory investigation, methodology, project administration, review and editing; M.A.: conceptualization, resources, review and editing; K.K.S.: conceptualization, funding acquisition, project administration, supervision, draft writing, review and editing.

# Competing interests  
The authors declare no conflicts of interests concerning this study.  

# Acknowledgements  
The authors thank L. Mohn, K.K. Thomsen, and all members of Shimizu group for their help with the establishment of field plots; and M. Brasser and R. Hostettler for their assistance with the molecular experiments. 

# Funding
This study was supported by the University of Zurich through the University Research Priority Program for "Global Change and Biodiversity" and Japan Science and Technology Agency (Grant numbers JPMJCR16O3 to KKS and JPMJPR17Q4 to YS).  


# Figures 

![Figure 1. Genome-wide association study of the aphid abundance on 196 *Arabidopsis thaliana* accessions grown in the field. (A) A genomic region near the top-scoring SNP at Chr3-4579292 desplays the position of candidate genes. Red colors highlight genes within 5 kbp from the focal SNP. (B) Manhattan plot shows the association score of -log~10~($p$) across five chromosomes of *A. thaliana* with MAF cut-off at 0.025. A horizontal dashed line indicates the genome-wide Bonferroni threshold at $p=0.05$.](../figures/fig1_comb.png){#fig:ManPlot}  

![Figure 2. The photorgraph (A), initial size (B), flowering time (C), and aphid abundance (D) of the Col-0 wild type (WT) and the ribosomal gene mutant (AT3G13882) of *Arabidopsis thaliana* under the laboratory condition. The aphid abundance is defined by log~2~(no. of aphids + 1). Asterisks indicate the statistical significance by generalized linear models; ***$p<0.001$, **$p<0.01$, *$p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/mutant.png){#fig:mutant}  


# Supplementary Materials  

![Figure S1. Position of coding region and transfer-DNA (T-DNA) mutation on the putative ribosomal gene AT3G13882. Dark blue: gene position; green: coding DNA sequence (CDS); yellow: mRNA; light blue: mutant insertion; red: primers. The primer IDs shown by four digits correspond to those listed in Table S3. To confirm the T-DNA insertion site of the line we used for the aphid experiment (i.e., SALK_039481), we extracted the DNA from leaves using the CTAB method. We then identified the T-DNA insertion site by polymerase chain reaction (PCR) amplification and Sanger sequencing (Microsynth, Switzerland).](../figures/AT3G13882.pdf){#fig:tDNA}  

![Figure S2. Semi-quantitative reverse transcription and polymerase chain reaction (sqRT-PCR) of the mutant line we used for the aphid experiment. To perform sqRT-PCR, we extracted the RNA from leaves using RNeasy kit (Qiagen) and purified the RNA with DNA-free kit (Ambion). RNA concentration was measured by Qubit spectrophotometer (Invitrogen). Then we obtained the cDNA using High-Capacity RNA-to-cDNA kit (TaqMan). After 35 cycles of PCR, the gene expression was check on 2% gel as shown in this supplementary figure. Two primer sets were used (see Table S4 for the primer information). The expected length of amplified fragment was 438 bp (primer pair A) and 436 bp (primer pair B). This figure shows that the gene expression of AT3G13882 is suppressed in the mutant line SALK_039481.](../figures/FigS5.png){#fig:sqRT_PCR}  

![Figure S3. Temporal patterns of the emergence of wingless and winged aphids during the field GWAS experiment. X-axes shows the number of winged (top row) or wingless (bottom row) aphids at current monitoring day (t=year-month-day). Y-axes show the total number of both winged and wingless aphids at the next monitoring date (t+1). A single point corresponds to an individual plant. The number of aphids represents the total number of individuals of *Lipaphis erysimi* and *Brevicoryne brassicae*.](../figures/aphid_No_per_day.png){#fig:aphid_day}  

![Figure S4. A quantile-quantile (QQ) plot showing relationships between the observed and expected -log~10~($p$) values. A solid line indicates randomly expected -log~10~($p$) and the shaded area corresponds to its 95\% confidence intervals. The top-scoring SNP at Chr3-4579292 is larger than the upper 95\% confidence interval.](../figures/log_BbLe_max_QQ.png){#fig:qqplot}  

![Figure S5. The aphid abundance during the later period of incubation. The aphid abundance is defined by log~2~(no. of aphids + 1). Asterisks indicate the statistical significance by generalized linear models; ***$p<0.001$, **$p<0.01$, *$p<0.05$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range. The patterns remained almost the same as the main Figure [2](#fig:mutant){reference-type="ref"}D. The levels of statistical significance became larger near the end of experiment due to severe over-dispersion. We thus provided results at the initial time point in the main text.](../figures/aphid_last.pdf){#fig:aphid_last}  


Table S1. List of GWAS accessions and phenotypes.  

Table S2. List of mutant lines examined in this study. Red text highlight three-times backcrossed lines.   

Table S3. List of primers to check the T-DNA insertion. The primers were designed using T-DNA Primer Design (http://signal.salk.edu/tdnaprimers.2.html).  

# References
