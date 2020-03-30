\name{hsluv_hex}
\alias{hsluv_hex}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
hsluv_hex converts HSLuv values to RGB Hex values
}
\description{
hsluv_hex converts HSLuv values to RGB Hex values
}
\usage{
hsluv_hex(h, s, l)
}
\arguments{
\item{h}{Hue (0, 360) as a vector of integers.}
\item{s}{Saturation (0, 100) as a vector of integers.}
\item{l}{Luminance (0, 100) as a vector of integers.}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
returns a vector of hex codes.
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
Scott Spencer
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
hsluv_hex(c(2, 1, 1), c(2, 1, 10), c(2, 1, 10))
}
\keyword{ ~HSLuv }
\keyword{ ~RGB }
\keyword{ ~hex }
\keyword{ ~Perception }