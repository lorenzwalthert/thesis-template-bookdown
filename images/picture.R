## example to generate an .eps file with the function ps.latex()
## Author: Sarah Gerster and Martin Mächler
## Last revision: 16 Aug 2011

require("sfsmisc") # pdf.latex(), pdf.end(), etc

pdf.latex(file='test_plot.pdf') #, main=TRUE)
## no main=TRUE is needed to leave enough space for the plot title
## but see below

## make sure the legends are large enough
par(cex=1.5)

## Make sure your lines are "visible" enough. Otherwise your plot
## won't look very nicely in your text.
plot(-10:10, (-10:10)**2, type="l", lty=5,
     xlab="my_x", ylab="my_y",
     ## no main title: NOT recommended for figures in text which
     ## have a \caption{..}
     lwd=4, col='blue')
lines(-10:10, 0:20, type="p", lwd=4, pch=23,col='red')
legend(-3, 90, c("func1","func2"),lwd=4,col=c('blue', 'red'),
       lty=c(1,1),cex=1)
pdf.end() # starts the previewer (which refreshes itself;
          # at least on Linux at SfS
