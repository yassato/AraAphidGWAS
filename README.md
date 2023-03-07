# AraAphidGWAS

Data and source codes for GWAS of aphid abundance on *Arabidopsis thaliana*. GWAS is done using the GWA-portal (<https://gwas.gmi.oeaw.ac.at/>).

## Directory

### data

This directory includes GWAS phenotypes and *Arabidopsis* mutant data. Other intermediate files will be created during the analysis with GWA-portal and R.

-   aphid_No_per_day.csv\
    Aphid monitoring data. The headers include: Date: Survey date (yyyy.mm.dd); IndivID: Individual plant ID; gwasID: Accession ID for GWAS; aphid_wing: No. of winged aphids; aphid_wingless: No. of wingless aphids; aphid_total: total no. of aphids.

-   AphidsNo.txt\
    The number of aphids per plant in the laboratory experiment. The headers include: Gene and Mutant: The wild type (WT) or the mutant of AT3G13882; No.: Plant ID; size: Initial size (cm) just before aphid release; Flowering: Days until flowering; t1-4: No. of aphids at t1, 2, 3, and 4 = 3, 7, 10 and 14 days after the release, respectively.

-   AtZurich2018aphidsGWAportal_data.csv\
    The input phenotype data for the GWA-portal. The headers include: gwasID: Accession ID for GWAS; Bolting: Presence (1) or absence (0) of bolting 2-wk after transplanting to the field; log_BbLe_max: Aphid abundance represented by the log(x+1)-transformed number of aphids (*Lipaphis erysimi* and *Brevicoryne brassicae*) per plant.

-   xxxxxx.pvals.csv.gz\
    gzip-compressed CSV files of GWAS results, directly available as an output of the GWA-portal.

### figures

This directory includes a picture of *A. thaliana*, output figures from R, and figures used for the manuscript

### manuscript

This is a working directory for manuscript writing (manuscript.md). Bibliography files (.bib and .csl) are also included.

### scripts

This directory includes R scripts for the analysis of GWAS outputs and *Arabidopsis* mutant data.

-   GWAp_output.R\
    R script to prepare the input file of GWA-portal, summarize aphid abundance in the field, analyze output from GWA-portal, and depict GWAS plots.

-   aphid.R\
    R script to analyze and visualize the results laboratory experiments using aphids and *Arabidopsis* mutants.
