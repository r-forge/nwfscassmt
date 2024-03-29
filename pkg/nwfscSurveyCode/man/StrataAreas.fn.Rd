\name{StrataAreas.fn}
\alias{StrataAreas.fn}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Determine strata area.
}
\description{
Determine strata area.
}
\usage{
StrataAreas.fn(strat.df, SA3, convertFactor = 0.01)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{strat.df}{
    A dataframe describing the strata name, area, and boundaries.  Boundaries are determined by latitude and bottom depth. See Details.
}
  \item{SA3}{
    A dataframe of min and max latitude and min and max depth with area for each defined square.  See Details.
}
  \item{convertFactor}{
    Multiplier on the area in SA3. Default = 0.01 to convert hectares to square km.
}
}
\details{
   strat.df is a dataframe with a column called ``name'' and two columns for each stratum variable (START_LATITUDE and BOTTOM_DEPTH) indicating the low and high bounds. 
   The columns for each stratum variable should be named with the stratum variable name followed by .1 for the low bound and .2 for the high bound. For example,
   this is what a strat.df would look like (as called in the example below).
   \begin{verbatim}   
   name  area    START_LATITUDE.2 START_LATITUDE.1 BOTTOM_DEPTH.1 BOTTOM_DEPTH.2
   A     5829    49.0             45.0             183            549
   B     4024    49.0             45.0             549            900
   C     9259    49.0             40.5             900            1280
   D     6211    45.0             40.5             183            549
   E     5264    45.0             40.5             549            900
   F     6952    40.5             34.5             183            549
   G     7801    40.5             34.5             549            900
   H     8059    40.5             34.5             900            1280
   \end{verbatim}

   SA3 is provided in this package. 
}
\value{
Returns the dataframe input with a column called area.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Allan Hicks with help from John Wallace.
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
