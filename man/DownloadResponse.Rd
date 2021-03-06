% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BdlResponse.R
\name{DownloadResponse}
\alias{DownloadResponse}
\title{Download the data in sync mode, waiting until the result file is there}
\usage{
DownloadResponse(bdlConnection, responseFileName, parser,
  pollFrequencySec = 40, timeoutMin = 10, verbose = FALSE)
}
\arguments{
\item{bdlConnection}{The BdlConnection object used to establish the FTP download}

\item{responseFileName}{The file downloaded}

\item{parser}{The parser used to convert the file into an R object}

\item{pollFrequencySec}{The polling frequency to check if file is available at Bloomberg}

\item{timeoutMin}{The timeout in minutes}

\item{verbose}{Prints progress output if TRUE}
}
\value{
the response content
}
\description{
Download the data in sync mode, waiting until the result file is there
}
\seealso{
UploadRequest

BdlResponseHandle
}

