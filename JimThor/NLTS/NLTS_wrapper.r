
################################
#
# R implementation of Sugihara Simplex and Smaps
#  2012-05-24
#  Code written by James Thorson, with help from Ethan Deyle, Hao Ye, and Sarah Glaser
#
################################

RootFile = "C:\\Users\\James Thorson\\Desktop\\UW Hideaway\\NLTS\\"

source(paste(RootFile,"Fn_simplex_and_smap_2012-05-23.r",sep=""))

# Time series length
Nobs = 100

# Generate tent function timeseries
Y = SimTentFn(Nobs=Nobs, S=1.75)
X = seq(0,1, length=1e4); plot(x=X, y=sapply(X, FUN=TentFn, S=1.75))
plot(y=Y[-1], x=Y[-Nobs])
plot(x=Y[-Nobs], y=Y[-1])

# Generate Lotka-Volterra timeseries
Y = SimPredPreyFn(Nobs=Nobs, Nt=100, A=0.4, B=0.5, C=0.2, E=1)$Y

# Simplex
Output = NltsFn(Y, PredInterval=2, Nembed=1, Method="Simplex")
EmbedFn(c(Y,NA,NA), PredInterval=2, Candidates=1:10)
NltsPred(c(Y,NA,NA), PredInterval=2, Nembed=2, PredNum=length(Y)+2, Method="Simplex")  # PredInterval is the number of years in the future (1 is next year, etc)

# S-map
Output = NltsFn(c(Y,NA,NA), PredInterval=2, Nembed=2, Method="Smap", Theta=1)
ThetaFn(c(Y,NA,NA), PredInterval=2, Nembed=2)
NltsPred(c(Y,NA,NA), PredInterval=2, Nembed=4, PredNum=length(Y)+1, Method="Smap", Theta=1)

###################
# Comparison with Sugihara code
###################

# Example 1 - salmon
# Timeseries from "estuart.txt" in Workshop examples
Salmon = read.table(paste(RootFile,"salmon.txt",sep=""), header=TRUE)
EmbedFn(Salmon[,2], PredInterval=1, Candidates=1:10)
ThetaFn(Salmon[,2], PredInterval=1, Nembed=4)







