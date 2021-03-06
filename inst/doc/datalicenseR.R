## ----eval=FALSE----------------------------------------------------------
#  library(datalicenseR)
#  #there is no bloomberg-test, unfortunately. So use your assigned credentials and ftp server instead.
#  bdlConnection <- BdlConnection(user = 'dl1234', pw = 'xyz123', 'bfmrr.bloomberg-test.com')
#  
#  #refer to the Bloomberg documentation for details
#  bdlRequest <- BdlRequestBuilder(
#                    header = c(FIRMNAME = 'dl1234', PROGRAMNAME = 'getdata', PROGRAMFLAG = 'oneshot'),
#                    fields = c('PX_LAST', 'PX_CLOSE'),
#                    data = c('IBM US Equity', "INDU Index"))
#  
#  #derive out name from request file name
#  responseFileName <- UploadRequest(bdlConnection,
#                                    bdlRequest,
#                                    'test.req')
#  
#  repeat {
#    res <- TryGetBdlData(bdlConnection, responseFileName)
#    if (!is.null(res)) break
#    Sys.sleep(5)
#  }
#  
#  

## ----echo=FALSE----------------------------------------------------------
library(datalicenseR)
data(getDataReply)
res <- getDataReply

## ------------------------------------------------------------------------
res

## ----eval=FALSE----------------------------------------------------------
#  fileName <- "inst/extdata/getdata.req"
#  request <- readChar(fileName, file.info(fileName)$size)
#  # The bdlRequest arg can be either a BdlRequestBuilder object, or - as is the
#  # case here - a character string.
#  responseFileName <- UploadRequest(bdlConnection = bdlConnection,
#                                    bdlRequest = request,
#                                    targetFileName = 'test.req')

## ----eval=TRUE-----------------------------------------------------------
fileName <- system.file("extdata", "getdata.out", package="datalicenseR")
content <- readChar(fileName, file.info(fileName)$size)
response1 <- GetDataParser(bdlOutContent = content)

