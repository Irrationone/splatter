% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simple-simulate.R
\name{simpleSimulate}
\alias{simpleSimulate}
\title{Simple simulation}
\usage{
simpleSimulate(params = newSimpleParams(), verbose = TRUE, ...)
}
\arguments{
\item{params}{SimpleParams object containing simulation parameters.}

\item{verbose}{logical. Whether to print progress messages}

\item{...}{any additional parameter settings to override what is provided in
\code{params}.}
}
\value{
SingleCellExperiment containing simulated counts
}
\description{
Simulate counts from a simple negative binomial distribution without
simulated library sizes, differential expression etc.
}
\details{
Gene means are simulated from a gamma distribution with
\code{shape = mean.shape} and \code{rate = mean.rate}. Counts are then
simulated from a negative binomial distribution with \code{mu = means} and
\code{size = 1 / counts.disp}. See \code{\link{SimpleParams}} for more
details of the parameters.
}
\examples{
sim <- simpleSimulate()
# Override default parameters
sim <- simpleSimulate(nGenes = 1000, nCells = 50)
}
