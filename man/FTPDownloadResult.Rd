% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/BdlConnection.R
\name{FTPDownloadResult}
\alias{FTPDownloadResult}
\title{stores the result string and the download success}
\usage{
FTPDownloadResult(content, success, errorMsg, errorCode)
}
\arguments{
\item{content}{The content of the Downloaded file}

\item{success}{TRUE if OK}

\item{errorMsg}{The error message, if !success}

\item{errorCode}{The error code, if applicable}
}
\description{
stores the result string and the download success
}
\seealso{
DownloadFTP
}

