# A plotting R script produced by the Revigo server at http://revigo.irb.hr/
# If you found Revigo useful in your work, please cite the following reference:
# Supek F et al. "REVIGO summarizes and visualizes long lists of Gene Ontology
# terms" PLoS ONE 2011. doi:10.1371/journal.pone.0021800

# --------------------------------------------------------------------------
# If you don't have the ggplot2 package installed, uncomment the following line:
# install.packages( "ggplot2" );
library( ggplot2 );

# --------------------------------------------------------------------------
# If you don't have the scales package installed, uncomment the following line:
# install.packages( "scales" );
library( scales );

# --------------------------------------------------------------------------
# Here is your data from Revigo. Scroll down for plot configuration options.

revigo.names <- c("term_ID","description","frequency","plot_X","plot_Y","log_size","value","uniqueness","dispensability");
revigo.data <- rbind(c("GO:0016042","lipid catabolic process",0.472402764599779,-4.99158615904186,0.458640500946925,5.0570076983771,-2.85387196432176,1,0),
c("GO:0045893","positive regulation of transcription, DNA-templated",0.718592772874886,5.44818576653135,1.5473355229454,5.23917680803066,-4.50863830616573,0.666357779402151,0),
c("GO:0048868","pollen tube development",0.00841845208695167,-1.2205130255493,-6.59875868912598,3.30813737863804,-2.35892268667463,1,0),
c("GO:0120029","proton export across plasma membrane",0.0144588571769003,-1.43916365487658,6.40869565473601,3.54294984881418,-2.48798303050387,0.962904695847844,0),
c("GO:0007031","peroxisome organization",0.0916252393479445,-4.00698885197284,-3.32230522120869,4.34472621793986,-2.30016227413275,0.994431447135932,0.00687786),
c("GO:0030322","stabilization of membrane potential",0.00378250332450142,3.31431071160128,-5.21996670762548,2.96094619573383,-2.03039773515146,0.863738536719825,0.14725665),
c("GO:0009862","systemic acquired resistance, salicylic acid mediated signaling pathway",0.00316934834966438,7.22068477742847,-2.89971344630976,2.8842287696326,-2.55346283292636,0.819979825274306,0.16928872),
c("GO:0006612","protein targeting to membrane",0.177446221130033,-3.00605419026277,4.74118067082352,4.63176835384286,-2.28133226468379,0.962193827167619,0.18533521),
c("GO:0007166","cell surface receptor signaling pathway",0.944867673284846,5.96940173038311,-1.42335798706668,5.35806435411338,-2.20697834015402,0.757450668715225,0.32475835),
c("GO:0080151","positive regulation of salicylic acid mediated signaling pathway",0.000169860499785934,6.01599124261866,3.94703162485813,1.6232492903979,-3.31247103878537,0.788357074749628,0.42523503),
c("GO:1900057","positive regulation of leaf senescence",0.00038115038976356,4.73450837125552,4.41606768367453,1.96848294855394,-2.12801864615663,0.788788928155452,0.43394081),
c("GO:0006355","regulation of transcription, DNA-templated",9.89271279398399,5.0907950302554,-0.338290623925806,6.37800704179638,-2.15015080439474,0.721557842926762,0.57511113));

one.data <- data.frame(revigo.data);
names(one.data) <- revigo.names;
one.data <- one.data [(one.data$plot_X != "null" & one.data$plot_Y != "null"), ];
one.data$plot_X <- as.numeric( as.character(one.data$plot_X) );
one.data$plot_Y <- as.numeric( as.character(one.data$plot_Y) );
one.data$log_size <- as.numeric( as.character(one.data$log_size) );
one.data$value <- as.numeric( as.character(one.data$value) );
one.data$frequency <- as.numeric( as.character(one.data$frequency) );
one.data$uniqueness <- as.numeric( as.character(one.data$uniqueness) );
one.data$dispensability <- as.numeric( as.character(one.data$dispensability) );
#head(one.data);


# --------------------------------------------------------------------------
# Names of the axes, sizes of the numbers and letters, names of the columns,
# etc. can be changed below

p1 <- ggplot( data = one.data );
p1 <- p1 + geom_point( aes( plot_X, plot_Y, colour = value, size = log_size), alpha = I(0.6) );
p1 <- p1 + scale_colour_gradientn( colours = c("blue", "green", "yellow", "red"), limits = c( min(one.data$value), 0) );
p1 <- p1 + geom_point( aes(plot_X, plot_Y, size = log_size), shape = 21, fill = "transparent", colour = I (alpha ("black", 0.6) ));
p1 <- p1 + scale_size( range=c(5, 30)) + theme_bw(); # + scale_fill_gradientn(colours = heat_hcl(7), limits = c(-300, 0) );
ex <- one.data [ one.data$dispensability < 0.15, ];
p1 <- p1 + geom_text( data = ex, aes(plot_X, plot_Y, label = description), colour = I(alpha("black", 0.85)), size = 3 );
p1 <- p1 + labs (y = "semantic space x", x = "semantic space y");
p1 <- p1 + theme(legend.key = element_blank()) ;
one.x_range = max(one.data$plot_X) - min(one.data$plot_X);
one.y_range = max(one.data$plot_Y) - min(one.data$plot_Y);
p1 <- p1 + xlim(min(one.data$plot_X)-one.x_range/10,max(one.data$plot_X)+one.x_range/10);
p1 <- p1 + ylim(min(one.data$plot_Y)-one.y_range/10,max(one.data$plot_Y)+one.y_range/10);


# --------------------------------------------------------------------------
# Output the plot to screen

p1;

# Uncomment the line below to also save the plot to a file.
# The file type depends on the extension (default=pdf).

# ggsave("/path_to_your_file/revigo-plot.pdf");

