---
title: Genome-wide association study highlights potential effects of plant apparency on the initial colonization of aphids in *Arabidopsis thaliana*
output:
  word_document: default
  pdf_document: default
  html_document: default
bibliography: bibliography.bib
csl: proceedings-of-the-royal-society-b.csl
---
  
  
**Chongmeng Xu**^1†^, **Yasuhiro Sato**^1,2†\*^, **Misako Yamazaki**^1^, **Marcel Brasser**^1^, **Matthew A. Barbour**^1,3^, **Jordi Bascompte**^1^, **Kentaro K. Shimizu**^1,4\*^  

^1^ Department of Evolutionary Biology and Environmental Studies, University of Zurich, Winterthurerstrasse 190, 8057 Zurich, Switzerland    
^2^ Research Institute for Food and Agriculture, Ryukoku University, Yokotani 1-5, Seta Oe-cho, Otsu, Shiga 520-2194, Japan  
^3^ Départemente de Biologie, Université de Sherbrooke, 2500 boulevard de l’Université, Sherbrooke, QC, J1K 2R1, Canada  
^4^ Kihara Institute for Biological Research, Yokohama City University, Maioka 641-12, Totsuka-ward, Yokohama 244-0813, Japan  
^†^ *These authors equally contributed to this study*  
^\*^ *Co-correspondence; Y.S. (yasuhiro.sato@uzh.ch); K.K.S. (kentaro.shimizu@uzh.ch)*  

# Abstract  
Plant size, height, and other architectural traits, collectively called 'plant apparency', determine plant's visibility and consequent probability of being colonized by herbivores.
Although plant genes involved in physical and chemical defense are well studied in herbivory, less is known about the genetic basis underlying effects of plant apparency on herbivore colonization. 
Here, we conducted a genome-wide association study (GWAS) of aphid abundance in a field population of *Arabidopsis thaliana*. 
This GWAS of aphid abundance detected a rare but significant SNP variant on the third chromosome of *A. thaliana*, which was also partly associated with the presence or absence of inflorescence. 
Out of candidate genes near this significant SNP, a mutant of a ribosomal gene (AT3G13882) exhibited slower growth and later flowering than a wild type under laboratory conditions.
A no-choice assay with the turnip aphid, _Lipaphis erysimi_, found that aphids were unable to successfully establish on the mutant.
These findings suggest that genes relevant to plant apparency might underpin aphid colonization in the field.

# Introduction
Plants are attacked by herbivores across their life cycle in natural environments. 
While chemical and physical traits have long been the main focus of anti-herbivore resistance [@schoonhoven2005insect; @kessler2004silencing; @schuman2015plant; @sato2019plant], plant life-history traits also account for herbivory variation in field environments [@carmona2011plant; @barton2017future].
For example, plant size, height, and the other architectural traits often shape plants' visibility for herbivores [@zverev2017ontogenetic; @higuchi2019leaf].
These sets of visible traits, collectively called plant apparency [@feeny1976plant], changes across ontogeny from vegetative to reproductive stage [@barton2017future] and thereby affect the probability of being harbored by herbivores [@kawagoe2010escape; @marquis2021escape].
By focusing on genetic variation within a plant species, several studies have shown that plant architectural traits shape heritable variation in herbivore abundance and community composition [@johnson2009heritability; @barbour2015multiple; @sato2019plant].
Yet, less is known about the underlying genetic basis of the plant apparency on herbivore colonization.  

Genome-wide association study (GWAS) is an effective way to dissect the genetic architecture of ecologically important traits [@santure2018wild; @barker2019linking]. 
Through associations between single nucleotide polymorphisms (SNPs) and traits, GWAS provides a hypothesis-free approach to identify novel genes from natural phenotypic variation [@fujii2019stigmatic; @tsuchimatsu2020adaptive]. 
Recent studies showed that controlled laboratory conditions are unlikely to reflect outdoor environments where interspecific interactions typically occur [@honjo2020seasonality; @sato2019transcriptional].
This fact emphasizes the importance of *in natura* study of functional genes [@shimizu2011plant; @kudoh2016molecular; @yamasaki2017genomics; @zaidem2019evolutionary; @stockenhuber2021uv].
To achieve this goal, it is important to conduct GWAS under field conditions.

*Arabidopsis thaliana* is a model plant species distributed and naturalized around the world. 
While *A. thaliana* usually blooms in spring after over-wintering, some cohorts have overlapping life cycles from spring to autumn [@thompson1994spatiotemporal; @taylor2017interacting; @stockenhuber2021uv].
When *A. thaliana* plants emerge from late spring to early summer, they are threatened by various herbivores [@mosleh2009herbivory; @sato2019plant]. 
Of the diverse insect herbivores, aphids are known to be major herbivores occurring across the natural distribution range of *A. thaliana* [@zust2012natural]. 
Because aphids often suck phloem sap from leaf veins and inflorescences, we hypothesized that plant apparency may play a key role in harboring aphids under field conditions.  

To reveal the genetic architecture of aphid abundance, we combined GWAS with a mutant analysis in *A. thaliana*. 
We first conducted GWAS of aphid abundance on 196 *A. thaliana* accessions grown in a field site in Zurich, Switzerland. 
To further test candidate genes, we then cultivated and released the turnip aphid *Lipaphis erysimi* on *A. thaliana* mutants.  

# Materials & Methods

## Field GWAS      

### Plant genotypes  
We obtained *Arabidopsis thaliana* genotypes that were selfed and maintained as inbred lines, called "accessions", from the Arabidopsis Biological Resource Center (<https://abrc.osu.edu/>). 
We used the same set of 196 *A. thaliana* accessions as a previous study [@sato2021neighbor] except for two trichome mutants and an ungenotyped accession. 
All of these accessions were genotyped in the RegMap [@horton2012genome] and 1001 Genomes [@alonso20161] projects. 
The list of accessions and phenotypes measured in this study is available in Table S1.  

### Field experiment    
To observe aphids in a simulated late cohort, we exposed *A. thaliana* accessions to a field environment from 4 to 25 July 2018.
This field experiment was conducted at Zurich, Switzerland, to use a field site within a native distribution range of *A. thaliana*. 
To keep all the accessions in the rosette stage at the start of the field experiment, we initially cultivated *A. thaliana* in a laboratory under a short-day condition (8h light/16h dark cycle at 20$^\circ$C). 
Seeds were sown on 33-mm diameter Jiffy-seven^(R)^ pots and stratified under a constant dark 4$^\circ$C condition for a week. Seedlings were cultivated in a growth chamber for 6 weeks under the short-day condition. 
Plants grown on the Jiffy-seven pots were then planted in a new plastic pot filled with mixed soils of agricultural composts (Profi Substrat Classic CL ED73, Einheitserde Co.) and perlites with compost to perlite ratio of 3:1 litter volume. 
Eight replicates of the 196 accessions were then transferred to the outdoor garden at the University of Zurich-Irchel (47$^\circ$ 23'N, 8$^\circ$ 33'E).
Aphids were identified and counted by a single observer (Y. Sato) every two or three days.
The two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*, were identified based on the presence or absence of waxy compounds on their abdomen. 
These two species can be distinguished from the generalist aphid _Myzus persicae_ based on the length of cornicules, though _M. persicae_ did not occur during the present field experiment. 
To examine whether the aphid abundance differed between plants with and without inflorescence, we also recorded the presence or absence of bolting two weeks after the start of field experiment.
The field experiment lasted three weeks after transplanting until early-flowering accessions of *A. thaliana* started terminating their life.
Since 38% of plants initiated bolting in the field (see Results), longer experiments were hard due to the short life-cycle of flowered *A. thaliana*.  


### Data analysis  
All GWAS analyses were performed using the GWA-portal (https://gwas.gmi.oeaw.ac.at) [@seren2018gwa]. 
The imputed full-sequence dataset [@seren2018gwa] was used as SNP data for the 196 accessions, which provided combined SNP data imputed between 250k SNP chip genotyping by the RegMap project [@horton_genome-wide_2012] and high-throughput sequencing by the 1001 Genome Project [@alonso-blanco_1135_2016].
Pseudo-heritability $h^2$ [@seren2018gwa] was calculated for the target phenotype before association mapping. 
Accelerated mixed models [@seren2018gwa] were used for association mapping with a correction of kinship structure.
After the association mapping, candidate genes were searched within ca. 5 kb near a focal SNP. 
Genome sequences of natural accessions were checked using the 1001 genome browser (<http://signal.salk.edu/atg1001/3.0/gebrowser.php>).
To inspect organ-specific expression levels of candidate genes, we referred to Klepikova Arabidopsis Atlas [@klepikova2016high] via The Arabidopsis Information Resource (<https://www.arabidopsis.org/>).
The GWAS HitMap of AraGWAS Catalog (<https://aragwas.1001genomes.org/#/map>) [@togninalli_aragwas_2018] was also referred to inspect whether the top-scoring SNP was associated with other reported traits.  

We analyzed aphid abundance as well as additional two traits as the target phenotype in the GWA-portal. 
The aphid abundance was quantified as the maximum number of aphids, which included *Lipaphis erysimi* and *Brevicoryne brassicae* (see Results), observed on a plant during the experiment.
This number of aphids was then ln($x+1$)-transformed to improve normality.
We also analyzed the presence (1) or absence (0) of bolting as a representative trait of flowering to examine its overlap with the top-scoring SNP of the aphid abundance.
To quantify the extent to which the exclusion of the bolting effects weakened the top-scoring SNPs of the aphid abundance, we further performed GWAS using residuals of the aphid abundance as a target trait.
These residuals were obtained by regressing the aphid abundance on the presence (1) or absence (0) of bolting using a standard linear model.  

## Mutant analysis  

### *Arabidopsis thaliana* mutants
T-DNA sequence-indexed lines of *A. thaliana* were obtained from the Nottingham Arabidopsis Stock Centre (NASC) (https://arabidopsis.info/). 
In addition to Columbia-0 (Col-0, NASC Accession ID: N70000) wild type, we ordered four mutant lines for a ribosomal gene (AT3G13882) (Table S2). 
These original mutants were back-crossed to the Col-0 wild type three times.  

Following the instruction [@o2015user], we examined the insertion site by polymerase chain reaction (PCR) amplification and Sanger sequencing; and gene expression levels by Semi-quantitative reverse transcription and PCR (sqRT-PCR).
To confirm the T-DNA insertion site of SALK_039481, we extracted DNA from leaves using the CTAB method. 
Using the primers shown in Table S2 and S3, we then amplified the DNA by polymerase chain reaction (PCR) as follows: 2 min at 95$^\circ$C; 35 cycles of 15 s at 95$^\circ$C, 30 s at 55$^\circ$C, 1.5 min at 72$^\circ$C; and a final extension step of 3 min at 72$^\circ$C. 
The PCR product was finally sequenced by Sanger sequencing to confirm the insertion site.  

To perform sqRT-PCR, we extracted the RNA from leaves using RNeasy kit (Qiagen: Catalogue Number: 74181) and purified the RNA with DNA-free kit (Ambion: Cat. No. AM1906). 
RNA concentration was measured by Qubit spectrophotometer (Invitrogen: Cat. No. Q10211). 
Then we obtained the cDNA using High-Capacity RNA-to-cDNA kit (Applied Biosystems: Cat. No. 4387406) from 500 ng of the total RNA. 
Using the primers shown in Table S3 and S4, we amplified cDNA with PCR as follows: 3 min at 95$^\circ$C; 28 cycles of 15 s at 95$^\circ$C, 30 s at 55$^\circ$C, 1 min at 72$^\circ$C; and a final extension step of 5 min at 72$^\circ$C.
A gel electrophoresis was performed using a 1\% agarose with 120 V for 60 min. The PCR products were finally visualized an UV trans-illuminator system.  

We found that one of the four lines, the SALK_039481 (NASC Accession ID: N670586), indeed had a T-DNA insertion on an exon of one of two splice variants (Fig. [S1](#fig:tDNA){reference-type="ref"}) and reduced expression level of AT3G13882 (Fig. [S2](#fig:sqRT_PCR){reference-type="ref"}), suggesting that the insertion disrupted the gene. 
In the other three lines, the insertion was not found or low germination rate prevented further experiments.  

### Laboratory experiments
To observe plant growth, we cultivated ten replicates of the ribosomal gene mutant and the Col-0 wild type under a long-day condition (16h light/8h dark cycle at 22$^\circ$C/20$^\circ$C). 
Seeds were sown on a 294 cm$^3$ (= 7 $\times$ 7 $\times$ 6 cm) pot filled with the agricultural composts (Profi Substrat Classic CL ED73), and stratified at 4$^\circ$C under a constant dark condition for a week. 
The stratified seeds were then transferred to the long day condition. Seedlings were grown for 20 days.
The rosette diameter (cm) was recorded as an index of plant size before aphids were released, as described next. 

To test whether aphids could establish a colony on the mutant plants, we released the turnip aphid *L. erysimi* on the wild type and the mutant of *A. thaliana*.
The potted plants were separately enclosed with a mesh net. 
Five wingless females of adult aphids were released on each plant.
The experimental aphids were derived from a source population established by a previous study [@barbour2022keystone].
The enclosed plants were incubated under the long-day condition.
The number of aphids per plant was counted by eye 3, 7, 10, and 14 days after the release of aphids. 
We did not count aphids that escaped outside the area of a plant. 
Flowering time was defined as the number of days to flowering, and recorded during the aphid experiment.  

### Data analysis
We used linear mixed models (LMMs) or generalized linear mixed models (GLMMs) to test phenotypic differences between the mutant and the Col-0 wild type.
The plant size and flowering time were analyzed using LMMs that assumed Gaussian errors. 
The number of aphids i.e., the count response was analyzed using GLMMs with Poisson error structure and log link function. 
Paired positions of a mutant and wild type plant were incorporated as a random effect to consider spatial heterogeneity within a growth chamber environment.
An analysis of deviance with a $F$-test was used to test the significance of the mutant vs. wild type (df1 = 1) against phenotypic variation within the random effect of the paired positions (df2 = 10 pairs - 1 fixed effect = 9).
To examine the effects of the plant size and flowering time on the number of aphids, we also performed the same GLMM analysis with the plant size or flowering time included as a log-offset term.
All statistical analyses were performed using R version 4.0.3 [@Rcite]. 
For LMM and GLMM, we used the lmer and glmer function implemented in the lme4 package [@lme4].

# Results

## Field GWAS of the aphid abundance   
To monitor aphid abundance as well as visible plant traits, we transplanted 196 *A. thaliana* accessions in the field in Zurich within a native distribution range of *A. thaliana*.
At the transplantation, all plants were at the rosette stage, i.e., no bolting occurred. 
After two weeks, 38% of individual plants initiated bolting, i.e., inflorescence was observed. 
The main herbivores were the two species of specialist aphids, *Lipaphis erysimi* and *Brevicoryne brassicae*. 
The aphid abundance was higher on bolted accessions than on non-bolted accessions (non-bolted and bolted plants = average 0.59 and 2.07 aphids, respectively; Welch's $t$-test, $t = -21.9, df = 941.2, p < 10^{-15}$), suggesting that plant life cycle might be associated with plants' capacity to avoid aphids. 
In addition, we also distinguished the abundance of winged and wingless aphids to infer the colonization process of aphids on *A. thaliana*. 
Winged and wingless aphids were observed at the rosette stage at the first monitoring after the transplant, but many of these aphids did not establish a colony in subsequent monitoring (the days between 07 and 10 July 2018: Fig. [S3](#fig:aphid_day){reference-type="ref"}). 
This observation suggests that colonized aphids do not always establish a colony and thereby the success of the colony establishment also depends on the presence of inflorescence after colonization.  

To reveal genetic architecture underlying variation in aphid abundance, we calculated heritability and then performed association mapping. 
Aphid abundance had high heritability among the plant accessions ($h^2 = 0.7$), indicating the genetic control of this trait. 
Our mapping also detected a significant SNP in an intergenic region above the genome-wide Bonferroni threshold (Chr3-4579292, $p<10^{-8}$,  MAF=0.026: Fig. [1](#fig:ManPlot){reference-type="ref"}b; see also Fig. [S4](#fig:qqplot){reference-type="ref"}a for quantile-quantile plots).
This top-scoring SNP was also associated with the bolting to non-significant but strong extent (-log~10~(p)=5.26; Fig. [1](#fig:ManPlot){reference-type="ref"}c; Fig. [S4](#fig:qqplot){reference-type="ref"}b).
Our GWAS of the bolting was comparable with GWAS of flowering time, because we found the same broad peak on the top of the fourth chromosome as reported by previous GWAS of flowering time [@aranzana_genome-wide_2005].
The significance of Chr3-4579292 turned smaller but remained at -log~10~(p)=6.40 when we adjusted the effects of bolting on aphid abundance (Fig. [1](#fig:ManPlot){reference-type="ref"}d; Fig. [S4](#fig:qqplot){reference-type="ref"}c), indicating the partial contribution of the bolting to shaping the significant association between Chr3-4579292 SNP and aphid abundance.
We did not find any other significant GWAS hits to Chr3-4579292 in GWAS HitMap database [@togninalli_aragwas_2018] possibly because this rare variant might have been overlooked so far.
The line of GWAS analyses suggests that the SNP at Chr3-4579292 was significantly associated with aphid abundance through its potential influence on flowering.  

To narrow down candidate genes, we further focused on genomic region near the significant SNP at Chr3-4579292.
Five out of the 196 accessions carried a rare allele increasing aphid abundance, while the other accessions have major alleles (Fig. [S5](#fig:database){reference-type="ref"}a).
Genome sequences of four of the five rare accessions are available in the 1001 Genome Project [@alonso-blanco_1135_2016], where three of the four available accessions i.e., An-1, Kin-0, and Lm-2 shared similar patterns near Chr3-4579292 but differed from major accessions (Fig. [S5](#fig:database){reference-type="ref"}b).
Three candidate genes were located nearest to this SNP at Chr3-4579292 (Fig. [1](#fig:ManPlot){reference-type="ref"}a), encompassing a putative ribosomal gene (AT3G13882) that is homologous to a ribosome protein L34 gene (RPL34) [@cheng2017araport11], *EPIDERMAL PATTERNING FACTOR LIKE 3* (*EPFL3*: AT3G13898), and *MYB26*. 
Out of these three genes, the ribosomal gene (AT3G13882) is known to be highly expressed in vegetative organs such as leaves [@klepikova2016high]. 
The other two genes, *EPFL3* and *MYB26*, are highly expressed only in reproductive organs such as anthers or pistils [@klepikova2016high]. 
Because aphids were unlikely to suck saps from anthers and pistils, we focused on the ribosomal gene (AT3G13882) for further investigation.  

## Mutant plant growth and aphid colony establishment in the laboratory  
To examine visible phenotypes of the ribosomal gene mutant (AT3G13882), we compared growth and flowering time of this mutant with the Col-0 wild type. 
After 20 days of growth, the AT3G13882 mutant had a significantly smaller size than the wild type ($F_{1,9}=42.1, p=0.00011$: Fig. [2](#fig:mutant){reference-type="ref"}A,B). 
The flowering time of the AT3G13882 mutant was also significantly later than the wild type ($F_{1,9}=48.8, p<0.0001$: Fig. [2](#fig:mutant){reference-type="ref"}A,C). 
The slower growth and delayed flowering of the ribosomal gene mutant led us to test whether the delayed growth could prevent the establishment of aphid colonies after colonization.  

Then, to examine colony establishment after aphid colonization, we released wingless individuals of *Lipaphis erysimi* on rosette plants of the ribosomal gene mutant (AT3G13882) and the wild type. 
We observed a reduced number of aphids on the AT3G13882 mutant compared to the wild type at 7, 10, 14 days after the release of aphids ($F_{1,9}=19.3, p=0.0017$ at 7 days; Fig. [2](#fig:mutant){reference-type="ref"}D: see also Fig. [S6](#fig:aphid_stat){reference-type="ref"} for results at 10 and 14 days; Table S5), suggesting that the delayed growth of the host negatively affected aphid colony establishment.
We also incorporated the plant size or flowering time as an offset term in GLMMs to examine their confounding influence on aphid abundance.
When the plant size was offset, the number of aphids less significantly differed between the wild type and mutant ($F_{1,9}=6.9, p=0.027$ at 7 days: see also Table S5). 
When the flowering time was offset, the number of aphids more significantly differed between the wild type and mutant ($F_{1,9}=40.78, p<0.001$ at 7 days: see also Table S5).
These additional analyses indicated that delayed growth rather than delayed flowering contributed more to the unsuccessful establishment of aphid colony, though these two phenotypes were highly corrected each other (Pearson's correction coefficient, $r=-0.913, p<10^{-7}$).  

# Discussion
Guided by the field GWAS of aphid abundance, we discovered a mutant plant that exhibited slower growth and thereby harbored fewer aphids in _A. thaliana_.
While ribosomal genes have long been considered housekeeping genes of the protein synthesis machinery, mutants of ribosome-related genes exhibit a wide variety of growth and reproductive phenotypes. 
For example, previous studies reported the reduction of leaf cell number [@fujikura2009coordination], reduced root length [@creff2010two], and the reduction of pollen number [@tsuchimatsu2020adaptive; @kakui2022pollen] regarding ribosomal gene mutations.
In this context, our findings from the ribosomal gene AT3G13882 add insights into biotic interactions besides growth deterioration.
Because delayed growth and flowering phenotypes are mutually non-exclusive in the ribosomal gene mutant, the relative importance of size or flowering in preventing aphid colonization remains difficult to separate.
Still, our findings suggest potential roles of the ribosomal gene in plant-herbivore interactions through its alteration of plant apparency.  

We should note, however, that further study on natural variants responsible for the delayed growth and reduced aphid abundance would be necessary to validate its importance in the field.
Because linkage disequilibrium is common in the genome of *A. thaliana* [@nordborg_extent_2002], genes nearby the top-scoring SNP are equally possible to be causal.
Multiple alleles on the AT3G13882 gene are thus needed to provide strong evidence of the delayed growth phenotypes. 
In the studies of a ribosomal gene *REDUCED POLLEN NUMBER1* (*RDP1*), null mutants showed a pleiotropic effect on plant growth and pollen number in *A. thaliana* [@tsuchimatsu2020adaptive; @kakui2022pollen]. 
Natural alleles of *RDP1* could alleviate pleiotropic growth defects [@tsuchimatsu2020adaptive]. 
In our study, the other growth-related genes or other mutations of AT3G13882 might have reduced the aphid abundance. 
Because transgenic approaches may not be effective to identify mutation sites affecting quantitative traits, natural alleles need to be created using genome editing technology and then exchanged between natural accessions by crossing [@tsuchimatsu2020adaptive].
Such quantitative complementation tests [@tsuchimatsu2020adaptive; @kakui2022pollen] will be needed to identify natural causal variants that alter aphid abundance through delayed growth.  

Discovery of flowering-associated loci is sometimes of main interests in GWAS, but other times conceals net genetic effects on other complex traits of interests [@hori2012variation; @onogi2016uncovering]. 
Our GWAS of aphid abundance unexpectedly led us to detect a significant rare variant that was also partially associated with the bolting.
By correcting the plant size and flowering time as confounding factors, we were able to detect substantial contributions of plant apparency to aphid abundance.
This finding does not indicate the irrelevance of chemical and physical defense traits to herbivore colonization.
Although our top-scoring SNP did not match known GWAS peaks of glucosinolates [@brachi2015coselected], it was still possible that secondary metabolites and volatile-mediated defense signaling co-vary across plant ontogeny at phenotype levels.
Such time-varying effects of plant traits on aphid colonization is difficult to evaluate using the short-lived annual *A. thaliana*.
Further studies on long-lived plants besides the identification of natural causal variants would be needed to verify long-term impacts of a single plant gene on herbivory.  

Overall, our study suggests the potential importance of genetically based plant apparency in altering herbivore abundance.
Previous field studies used mutant plants to illustrate *in natura* roles of well-studied functional genes in chemical defense (e.g., *LOX*s in *Nicotiana attenuata* [@kessler2004silencing; @schuman2015plant]) and physical defense (*GLABRA1* in *A. thaliana* [@sato2019plant]) against herbivores.
In contrast, field GWAS offered a hypothesis-free approach to screen candidate genes responsible for herbivore abundance [@barker2019linking].
These lines of studies suggest that plant genetic variation governs herbivore abundance and communities [@johnson2009heritability; @barbour2015multiple; @sato2019plant; @barker2019linking], but a keystone gene shaping the ecological communities was not identified until recently [@barbour2022keystone]. 
Barbour et al. [@barbour2022keystone] have experimentally shown that pleiotropic effects of a glucosinolate biosynthesis gene *AOP2* on plant growth alter *A. thaliana*'s capacity to harbor aphids and their parasitoids. 
Our candidate genes might also exhibit pleiotropy on plant growth and secondary metabolism, but our findings support the notion that genes associated with plant growth can structure populations or communities of associated organisms. 
Since aphids and aphidophagous insects are widespread across terrestrial ecosystems [@dixon1977aphid; @snyder2003interactions], future studies may reveal cascading effects of delayed plant growth on food webs.

# Data availability  
The data and codes are available at the GitHub repository (https://github.com/yassato/AraAphidGWAS) and its published version is deposited on Dryad (doi::xxxxxx).    

# Authors' contributions
C.X.: laboratory investigation, project administration, data curation, draft writing, review and editing; Y.S.: conceptualization, funding acquisition, project administration, supervision, field investigation, data curation, formal analysis, draft writing, review and editing; M.Y.: laboratory investigation, methodology (molecular), project administration, review and editing; M.B.: laboratory investigation, methodology (molecular); M.A.B: resources (insects), review and editing; J.B.: conceptualization, funding acquisition, supervision, review and editing; K.K.S.: conceptualization, funding acquisition, project administration, supervision, draft writing, review and editing.

# Competing interests  
The authors declare no conflicts of interests concerning this study.  

# Acknowledgements  
The authors thank L. Mohn, K.K. Thomsen, and all members of Shimizu group for their help with the establishment of field plots; and R. Hostettler for assistance with the molecular experiments.  

# Funding
This study was supported by the University of Zurich through the University Research Priority Program for “Global Change and Biodiversity”; Swiss National Science Foundation grant (31003A_182318 to K.K.S.); Japan Science and Technology Agency (Grant numbers JPMJCR16O3 to K.K.S. and JPMJPR17Q4 to Y.S.); and Japan Society for the Promotion of Science, Grant-in-Aid for Transformative Research Areas (22H05179 to K.K.S.).  

# Figures 

![Figure 1. Genome-wide association study of aphid abundance on 196 *Arabidopsis thaliana* accessions grown in the field. (A) A genomic region within ca. 5 kbp from the top-scoring SNP at Chr3-4579292 displays the position of candidate genes. Only the longest splice variant (black horizontal arrow) is shown for each gene. (B-D) Manhattan plots show the association score of -log~10~($p$) for the aphid abundance (B), the presence of bolting (C), and the residuals of aphid abundance corrected by the bolting (D) across five chromosomes of *A. thaliana* with MAF cut-off at 0.025. A horizontal dashed line indicates the genome-wide Bonferroni threshold at $p=0.05$. A vertical red line highlights the position of Chr3-4579292. ](../figures/fig1_comb.pdf){#fig:ManPlot}  

![Figure 2. The photograph (A), plant size (B), flowering time (C), and aphid abundance (D) of the Col-0 wild type (WT) and the ribosomal gene mutant (AT3G13882) of *Arabidopsis thaliana* under laboratory conditions. Flowering time and aphid abundance represents the number of days to flowering and log~2~(no. of aphids + 1), respectively. Asterisks indicate the statistical significance by generalized linear mixed models; ** $p<0.01$; *** $p<0.001$; **** $p<0.001$. Boxes: median with upper and lower quartile; Whiskers: 1.5 $\times$ inter-quartile range.](../figures/mutant.png){#fig:mutant}  


# Supplementary Materials  

![Figure S1. Schematic structure of the ribosomal gene AT3G13882. Green boxes: mRNA for two splice variants; triangle: the position of Transfer-DNA (T-DNA) insersion; red arrrows: primers for checking the T-DNA insertion. The primer IDs shown by four digits (oXXXX) correspond to those listed in Table S3. We downloaded the annotations from Genbank (Gene ID: 3768810), and visualized the position of the gene and primers using QIAGEN CLC Main Workbench.](../figures/AT3G13882.pdf){#fig:tDNA}  

![Figure S2. Semi-quantitative reverse transcription and polymerase chain reaction (sqRT-PCR) of the ribosomal gene mutant mutant AT3G13882 (SALK_039481). Two primer sets A-D were used for AT3G13882; and E for an internal control gene *ETL1* (see Table S4 for the primer information). This figure shows that the gene expression of AT3G13882 is suppressed in the mutant line SALK_039481.](../figures/FigS_gel_annotation.tiff){#fig:sqRT_PCR}  

![Figure S3. Temporal patterns of the emergence of wingless and winged aphids during the field GWAS experiment. X-axes show the number of winged (top row) or wingless (bottom row) aphids at current monitoring day (t=year-month-day). Y-axes show the total number of both winged and wingless aphids at the next monitoring date (t+1). A single point corresponds to an individual plant. The number of aphids represents the total number of individuals of both *Lipaphis erysimi* and *Brevicoryne brassicae*.](../figures/aphid_No_per_day.png){#fig:aphid_day}  

![Figure S4. A quantile-quantile (QQ) plot showing relationships between the observed and expected association score of -log~10~($p$) for the aphid abundance (top), the presence of bolting (middle), and the residuals of aphid abundance corrected by the bolting (bottom). A red solid line indicates randomly expected association scores abd the shaded area corresponds to its 95\% confidence intervals. The top figure shows that the top-scoring SNP at Chr3-4579292 is larger than the upper 95\% confidence interval.](../figures/supp_QQ.png){#fig:qqplot}

![Figure S5. Phenotype values (a) and amino acid sequences (b) focusing on the rare variant at Chr3-4579292. (a) The aphid abundance i.e., log(no. of aphids) between major and rare SNP alleles at Chr3-4579292. Bars indicates medians of the aphid abundance. (b) A comparison of amino acid sequences near Chr3-4579292 among accessions carrying rare or major alleles. Four accessions above the Col-0 sequence show those of the rare allele (highlighted by red squares), while accessions below the Col-0 show those of the lowest phenotypic values (highlited by blue squares). The panel (a) and (b) is depicted using the GWA-portal (<https://gwas.gmi.oeaw.ac.at/>) and 1001 Genome Browser (<http://signal.salk.edu/atg1001/3.0/gebrowser.php>), respectively.](../figures/database_snapshot.png){#fig:database}

![Figure S6. Aphid abundance during the later period of incubation. Aphid abundance represents log~2~(no. of aphids + 1). Same as the result at 7 days (Fig. [2](#fig:mutant){reference-type="ref"}D), both the left and right panels have significant differences of the aphid abundance between the mutant (AT3G13882) and wild type (WT) ($F_{1,9}=56.96, p<10^{-4}$ for 10 days; $F_{1,9}=131.3, p<10^{-5}$ for 14 days).](../figures/aphid_last.pdf){#fig:aphid_last} 

Table S1. List of GWAS accessions and phenotypes.  

Table S2. List of mutant lines examined in this study.  

Table S3. List of primers to check the T-DNA insertion or gene expression.  

Table S4. Primer set information for sqRT-PCR results shown in Figure [S2](#fig:sqRT_PCR){reference-type="ref"}.    

Table S5. Analysis of deviance for GLMMs comparing the number of aphids between the mutant and wild type plants.  

# References
