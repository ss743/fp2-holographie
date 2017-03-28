setwd("C:\\Users\\Saskia\\Documents\\Physik\\FP\\fp2-holographie\\scripts")

source("Funktionen1.R")
source("Crazyfit.R")

data1=readTXT("staeb1")

x1=100*data1[[1]]
y1=data1[[2]]

arrayy1=c()
arrayx1=c()
j=1
for(i in 2:840){
  if ((y1[i] < y1[i-1]) && (y1[i] < y1[i+1])) {
   arrayy1[j] = y1[i];
   arrayx1[j] = x1[i];
   j=j+1;
  }
}
    
arrayy1[c(2,9,11)]=0
arrayy1=arrayy1[arrayy1!=0]
arrayx1[c(2,9,11)]=0
arrayx1=arrayx1[arrayx1!=0]
#arrayx1=100*arrayx1

arrayI1=c()
for(i in 1:35){
  arrayI1[i]=(((632*10^-9)/4)*(2*i+1))
}
    
arrayI1=10^6*arrayI1  
    
draw(x1, y1,xlab="Position of Minima/cm", ylab="Intensity")
draw(arrayx1, arrayy1, add=TRUE, col="red")
drawCIxx(arrayx1, arrayI1, sx=10^-2*(arrayx1/arrayx1), xlab="Position of Minima/cm", ylab="displacement/mu m")

fit1=crazyfit(data.frame(x=arrayx1, y=arrayI1))
plotcrazy(fit1)

data2=readTXT("staeb2")

x2=100*data2[[1]]
y2=data2[[2]]

arrayy2=c()
arrayx2=c()
j=1
for(i in 2:840){
  if ((y2[i] < y2[i-1]) && (y2[i] < y2[i+1])) {
    arrayy2[j] = y2[i];
    arrayx2[j] = x2[i];
    j=j+1;
  }
}

arrayy2[1]=0
arrayy2=arrayy2[arrayy2!=0]
arrayx2[1]=0
arrayx2=arrayx2[arrayx2!=0]
#arrayx2=100*arrayx2

arrayI2=c()
for(i in 1:27){
  arrayI2[i]=(((632*10^-9)/4)*(2*i+1))
}

arrayI2=10^6*arrayI2
draw(x2, y2, xlab="Position of Minima/cm", ylab="Intensity")
draw(arrayx2, arrayy2, add=TRUE, col="red")
drawCIxx(arrayx2, arrayI2, sx=10^-2*(arrayx2/arrayx2), xlab="Position of Minima/cm", ylab="displacement/mu m")

fit2=crazyfit(data.frame(x=arrayx2, y=arrayI2))
plotcrazy(fit2)

data3=readTXT("staeb3")

x3=100*data3[[1]]
y3=data3[[2]]

arrayy3=c()
arrayx3=c()
j=1
for(i in 2:840){
  if ((y3[i] < y3[i-1]) && (y3[i] < y3[i+1])) {
    arrayy3[j] = y3[i];
    arrayx3[j] = x3[i];
    j=j+1;
  }
}

arrayy3[c(1,2,4,5,7,9,16,22)]=0
arrayy3=arrayy3[arrayy3!=0]
arrayx3[c(1,2,4,5,7,9,16,22)]=0
arrayx3=arrayx3[arrayx3!=0]
#arrayx3=100*arrayx3

arrayI3=c()
for(i in 1:19){
  arrayI3[i]=(((632*10^-9)/4)*(2*i+1))
}

arrayI3=10^6*arrayI3
draw(x3, y3, xlab="Position of Minima/cm", ylab="Intensity")
draw(arrayx3, arrayy3, add=TRUE, col="red")
drawCIxx(arrayx3, arrayI3, sx=10^-2*(arrayx3/arrayx3), xlab="Position of Minima/cm", ylab="displacement/mu m")

fit3=crazyfit(data.frame(x=arrayx3, y=arrayI3))
plotcrazy(fit3)
