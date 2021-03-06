% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/conga.R
\name{conga}
\alias{conga}
\title{Calculate continuous overall net glycemic action (CONGA)}
\usage{
conga(data, tz = "")
}
\arguments{
\item{data}{DataFrame object with column names "id", "time", and "gl".}

\item{tz}{A character string specifying the time zone to be used. System-specific (see \code{\link{as.POSIXct}}), but " " is the current time zone, and "GMT" is UTC (Universal Time, Coordinated). Invalid values are most commonly treated as UTC, on some platforms with a warning.}
}
\value{
A tibble object with two columns: subject id and corresponding CONGA value.
}
\description{
The function conga produces a CONGA values a tibble object.
conga currently only supports calculation of CONGA24.
}
\details{
A tibble object with 1 row for each subject, a column for subject id and
a column for the CONGA values is returned.

Missing values will be linearly interpolated when close enough to non-missing values.

CONGA_n is the standard deviation of the difference between glucose values that are exactly n hours apart. CONGA_{24} is currently the only supported CONGA type (n = 24), and is computed by taking the standard deviation of differences in measurements separated by 24 hours.
}
\examples{

data(example_data_1_subject)
conga(example_data_1_subject)

data(example_data_5_subject)
conga(example_data_5_subject)

}
\references{
McDonnell et al. (2005) : A novel approach to continuous glucose analysis
utilizing glycemic variation
\emph{Diabetes Technology and Therapeutics} \strong{7} .253-263,
\doi{10.1089/dia.2005.7.253}.
}
