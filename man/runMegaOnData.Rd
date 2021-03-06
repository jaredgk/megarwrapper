% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/readrdata.R
\name{runMegaOnData}
\alias{runMegaOnData}
\title{MEGA data read-in}
\usage{
runMegaOnData(data, data_ext, analysis_file, out_prefix = "mega_out_",
  temp_prefix = "mega_temp")
}
\arguments{
\item{data}{Data object}

\item{data_ext}{Datatype of input data, for writing}

\item{analysis_file}{Filename of MAO file generated by prototyper}

\item{out_file}{Name of temporary output file}

\item{out_parse}{Datatype of MEGA output}
}
\value{
Data from MEGA
}
\description{
MEGA data read-in
}
\author{
Jared Knoblauch
}
