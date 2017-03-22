readTXT <- function(filename){
  
  return (read.table(paste("../data/",filename,".txt",sep=""),dec=",", skip = 3))
  
}

draw <- function(x,y,xlab="x",ylab="y",col="black",scol="darkgrey", add=FALSE){
  if(add)
    points(x,y,pch=20,cex=0.5,col=col)
  else
    plot(x,y,pch=20,cex=0.2,bty="l",col=col,xlab=xlab,ylab=ylab)
  grid()
}

drawCIxx <- function(x,y,sx,xlab="x",ylab="y",col="black",scol="darkgrey"){
  plot(x,y,pch=4,cex=0.6,bty="l",col=col,xlab=xlab,ylab=ylab)
  arrows(x,y,x-sx,y,cex=0.6,pch=4,bty="l",col=scol,length=0.02,angle=90)
  arrows(x,y,x+sx,y,cex=0.6,pch=4,bty="l",col=scol,length=0.02,angle=90)
  points(x,y,cex=0.6,pch=4,col=col)
  grid()
}