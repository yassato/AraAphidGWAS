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

This directory includes original images, output figures from R, and figures used for the manuscript.

-   original_GelDoc 2022-10-27 10hr 48min.tif\
    An original gel image of sqRT-PCR experiments.

-   FigS_gel_annotation.tiff\
    Annotated gel image of sqRT-PCR experiments. The primer information is available in the supplementary tables of the manuscript.

-   mutantPhoto.png\
    A photograph of the wild type and mutant plant cultivated in the lab.

-   AT3G13882.pdf\
    Annotations on the ribosomal gene AT3G13882 made using QIAGEN CLC Main Workbench.

-   database_snapshot.png\
    Browsing results of GWA-portal phenotypes and 1001 Genome Viewer near Chr3-4579292.

### manuscript

This is a working directory for manuscript writing (manuscript.md). Bibliography files (.bib and .csl) are also included.

### scripts

This directory includes R scripts for the analysis of GWAS outputs and *Arabidopsis* mutant data.

-   GWAp_output.R\
    R script to prepare the input file of GWA-portal, summarize aphid abundance in the field, analyze output from GWA-portal, and depict GWAS plots. Run the GWA-portal before depicting GWAS plots.

-   aphid.R\
    R script to analyze and visualize the results laboratory experiments using aphids and *Arabidopsis* mutants.
