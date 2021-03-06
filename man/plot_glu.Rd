% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/plot_glu.R
\name{plot_glu}
\alias{plot_glu}
\title{Plot time series and lasagna plots of glucose measurements}
\usage{
plot_glu(
  data,
  plottype = c("tsplot", "lasagna"),
  datatype = c("all", "average", "single"),
  lasagnatype = c("unsorted", "timesorted"),
  LLTR = 80,
  ULTR = 140,
  subjects = NULL,
  tz = ""
)
}
\arguments{
\item{data}{DataFrame with column names ("id", "time", and "gl").}

\item{plottype}{String corresponding to the desired plot type. Options are
'tsplot' for a time series plot and 'lasagna' for a lasagna plot. See the
`lasagnatype` parameter for further options corresponding to the 'lasagna' `plottype`.
Default is 'tsplot'.}

\item{datatype}{String corresponding to data aggregation used for plotting, currently supported options are 'all' which plots all glucose measurements within the first \code{maxd} days for each subject, and 'average' which plots average 24 hour glucose values across days for each subject}

\item{lasagnatype}{String corresponding to plot type when using\code{datatype = "average"}, currently supported options are 'unsorted' for an unsorted lasagna plot, 'timesorted' for a lasagna plot with glucose values sorted within each time point across subjects, and '`subjectsorted`' for a lasagna plot with glucose values sorted within each subject across time points.}

\item{LLTR}{Lower Limit of Target Range, default value is 80 mg/dL.}

\item{ULTR}{Upper Limit of Target Range, default value is 140 mg/dL.}

\item{subjects}{String or list of strings corresponding to subject names
in 'id' column of data. Default is all subjects.}

\item{tz}{A character string specifying the time zone to be used. System-specific (see \code{\link{as.POSIXct}}), but " " is the current time zone, and "GMT" is UTC (Universal Time, Coordinated). Invalid values are most commonly treated as UTC, on some platforms with a warning.}
}
\value{
Any output from the plot object
}
\description{
The function plot_glu supports several plotting methods for both single and multiple
subject data.
}
\details{
For the default option 'tsplot', a time series graph for each subject is
produced with hypo- and hyperglycemia cutoffs shown as horizontal red lines.
The time series plots for all subjects chosen (all by default) are displayed
on a grid.

The 'lasagna' plot type works best when the datatype argument is set to average.
}
\examples{

data(example_data_1_subject)
plot_glu(example_data_1_subject)
plot_glu(example_data_1_subject, LLTR = 70)

data(example_data_5_subject)
plot_glu(example_data_5_subject, subjects = 'Subject 2')
plot_glu(example_data_5_subject, plottype = 'tsplot', tz = 'EST', LLTR = 70, ULTR= 150)
plot_glu(example_data_5_subject, plottype = 'lasagna', lasagnatype = 'timesorted')
plot_glu(example_data_5_subject, plottype = 'lasagna', lasagnatype = 'unsorted')

}
