crazyfit <- function(data){
  
  crazy <- y ~ A*(5*x^2-(1/6)*x^3)+B*x+C
  x <- data [[1]]
  y <- data[[2]]
  A0=1;
  B0=1;
  C0=1;

  
  fit = nls(crazy, data, start=list(A=A0, B=B0, C=C0))
  
  return(summary(fit)$parameters)
}

plotcrazy <- function(fit){
  
  A=fit["A","Estimate"]
  B=fit["B","Estimate"]
  C=fit["C","Estimate"]
  
  plot(function(x){A*(5*x^2-(1/6)*x^3)+B*x+C},0.,10,add=TRUE,col="red" )
}