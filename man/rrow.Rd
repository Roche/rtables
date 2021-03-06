% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/tt_compatibility.R
\name{rrow}
\alias{rrow}
\title{row}
\usage{
rrow(row.name = "", ..., format = NULL, indent = 0)
}
\arguments{
\item{row.name}{if \code{NULL} then the \code{FUN} argument is deparsed and
used as \code{row.name} of the \code{\link{rrow}}}

\item{\dots}{cell values}

\item{format}{if \code{FUN} does not return a formatted \code{\link{rcell}}
then the \code{format} is applied}

\item{indent}{deprecated.}
}
\value{
A row object of the context-appropriate type (label or data)
}
\description{
row
}
\examples{

rrow("ABC", c(1,2), c(3,2), format = "xx (xx.\%)")
rrow("")

}
