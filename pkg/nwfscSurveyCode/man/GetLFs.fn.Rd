\name{GetLFs.fn}
\alias{GetLFs.fn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Reads in LF data and returns length frequencies in SS3 format
}
\description{
calls readInLengthComps.fn, then calls SS3LF.fn
}
\usage{
GetLFs.fn(file, headerRow, lgthBins = 1, gender = 3, nSamps = "EnterNsamps", fleet = "EnterFleet", season = 1, partition = 0, NAs2zero = T, sep = ",", sexRatioUnsexed = NA, maxSizeUnsexed = NA)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{file}{
%%     ~~Describe \code{file} here~~
}
  \item{headerRow}{
%%     ~~Describe \code{headerRow} here~~
}
  \item{lgthBins}{
%%     ~~Describe \code{lgthBins} here~~
}
  \item{gender}{
%%     ~~Describe \code{gender} here~~
}
  \item{nSamps}{
%%     ~~Describe \code{nSamps} here~~
}
  \item{fleet}{
%%     ~~Describe \code{fleet} here~~
}
  \item{season}{
%%     ~~Describe \code{season} here~~
}
  \item{partition}{
%%     ~~Describe \code{partition} here~~
}
  \item{NAs2zero}{
%%     ~~Describe \code{NAs2zero} here~~
}
  \item{sep}{
%%     ~~Describe \code{sep} here~~
}
  \item{sexRatioUnsexed}{
%%     ~~Describe \code{sexRatioUnsexed} here~~
}
  \item{maxSizeUnsexed}{
%%     ~~Describe \code{maxSizeUnsexed} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
%##---- Should be DIRECTLY executable !! ----
%##-- ==>  Define data, use random,
%##--	or do  help(data=index)  for the standard data sets.
 
%## The function is currently defined as
%function (file, headerRow, lgthBins = 1, gender = 3, nSamps = "EnterNsamps", 
%    fleet = "EnterFleet", season = 1, partition = 0, NAs2zero = T, 
%    sep = ",", sexRatioUnsexed = NA, maxSizeUnsexed = NA) 
%{
%    len <- readInLengthComps.fn(file, headerRow = headerRow, 
%        sep = sep)
%    SS3LF.fn(len, lgthBins = lgthBins, gender = gender, nSamps = nSamps, 
%        fleet = fleet, season = season, partition = partition, 
%        NAs2zero = NAs2zero, sexRatioUnsexed = NA, maxSizeUnsexed = NA)
%  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
