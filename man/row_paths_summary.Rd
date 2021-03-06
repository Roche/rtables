% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/summary.R
\name{row_paths_summary}
\alias{row_paths_summary}
\alias{col_paths_summary}
\title{Print Row/Col Paths Summary}
\usage{
row_paths_summary(x)

col_paths_summary(x)
}
\arguments{
\item{x}{an rtable object}
}
\value{
A data.frame summarizing the row- or column-structure of \code{x}.
}
\description{
Print Row/Col Paths Summary
}
\examples{

library(dplyr)

ex_adsl_MF <- ex_adsl \%>\% filter(SEX \%in\% c("M", "F"))

tbl <- basic_table() \%>\%
  split_cols_by("ARM") \%>\%
  split_cols_by("SEX", split_fun = drop_split_levels) \%>\%
  analyze(c("AGE", "BMRKR2")) \%>\%
  build_table(ex_adsl_MF)

tbl

df <- row_paths_summary(tbl)

df

col_paths_summary(tbl)

# manually constructed table
tbl3 <- rtable(
   rheader(
     rrow("row 1", rcell("a", colspan = 2),
     rcell("b", colspan = 2)
   ),
   rrow("h2", "a", "b", "c", "d")),
   rrow("r1", 1, 2, 1, 2), rrow("r2", 3, 4, 2,1)
)
col_paths_summary(tbl3)
}
