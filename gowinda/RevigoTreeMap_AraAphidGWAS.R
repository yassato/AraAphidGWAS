# A treemap R script produced by the Revigo server at http://revigo.irb.hr/
# If you found Revigo useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# author: Anton Kratz <anton.kratz@gmail.com>, RIKEN Omics Science Center, Functional Genomics Technology Team, Japan
# created: Fri, Nov 02, 2012  7:25:52 PM
# last change: Fri, Nov 09, 2012  3:20:01 PM

# -----------------------------------------------------------------------------
# If you don't have the treemap package installed, uncomment the following line:
# install.packages( "treemap" );
library(treemap) 								# treemap package by Martijn Tennekes

# Set the working directory if necessary
# setwd("C:/Users/username/workingdir");

# --------------------------------------------------------------------------
# Here is your data from Revigo. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency","value","uniqueness","dispensability","representative");
revigo.data <- rbind(c("GO:0016042","lipid catabolic process",0.472402764599779,2.85387196432176,1,0,"lipid catabolic process"),
c("GO:0045893","positive regulation of transcription, DNA-templated",0.718592772874886,4.50863830616573,0.666357779402151,0,"positive regulation of transcription, DNA-templated"),
c("GO:0030322","stabilization of membrane potential",0.00378250332450142,2.03039773515146,0.863738536719825,0.14725665,"positive regulation of transcription, DNA-templated"),
c("GO:0009862","systemic acquired resistance, salicylic acid mediated signaling pathway",0.00316934834966438,2.55346283292636,0.819979825274306,0.16928872,"positive regulation of transcription, DNA-templated"),
c("GO:0007166","cell surface receptor signaling pathway",0.944867673284846,2.20697834015402,0.757450668715225,0.32475835,"positive regulation of transcription, DNA-templated"),
c("GO:0080151","positive regulation of salicylic acid mediated signaling pathway",0.000169860499785934,3.31247103878537,0.788357074749628,0.42523503,"positive regulation of transcription, DNA-templated"),
c("GO:1900057","positive regulation of leaf senescence",0.00038115038976356,2.12801864615663,0.788788928155452,0.43394081,"positive regulation of transcription, DNA-templated"),
c("GO:0006355","regulation of transcription, DNA-templated",9.89271279398399,2.15015080439474,0.721557842926762,0.57511113,"positive regulation of transcription, DNA-templated"),
c("GO:0048868","pollen tube development",0.00841845208695167,2.35892268667463,1,0,"pollen tube development"),
c("GO:0120029","proton export across plasma membrane",0.0144588571769003,2.48798303050387,0.962904695847844,0,"proton export across plasma membrane"),
c("GO:0006612","protein targeting to membrane",0.177446221130033,2.28133226468379,0.962193827167619,0.18533521,"proton export across plasma membrane"),
c("GO:0007031","peroxisome organization",0.0916252393479445,2.30016227413275,0.994431447135932,0.00687786,"peroxisome organization"));

stuff <- data.frame(revigo.data);
names(stuff) <- revigo.names;

stuff$value <- as.numeric( as.character(stuff$value) );
stuff$frequency <- as.numeric( as.character(stuff$frequency) );
stuff$uniqueness <- as.numeric( as.character(stuff$uniqueness) );
stuff$dispensability <- as.numeric( as.character(stuff$dispensability) );

# by default, outputs to a PDF file
pdf( file="revigo_treemap.pdf", width=16, height=9 ) # width and height are in inches

# check the tmPlot command documentation for all possible parameters - there are a lot more
treemap(
  stuff,
  index = c("representative","description"),
  vSize = "value",
  type = "categorical",
  vColor = "representative",
  title = "Revigo TreeMap",
  inflate.labels = FALSE,      # set this to TRUE for space-filling group labels - good for posters
  lowerbound.cex.labels = 0,   # try to draw as many labels as possible (still, some small squares may not get a label)
  bg.labels = "#CCCCCCAA",   # define background color of group labels
								 # "#CCCCCC00" is fully transparent, "#CCCCCCAA" is semi-transparent grey, NA is opaque
  position.legend = "none"
)

dev.off()

