#Mean Value Function
GO_BM_FT_MVF <- function(aMLE,bMLE,data){
		tmp <- aMLE*(1-exp(-bMLE*data))
		return(tmp)
}

#log-likelihood function
GO_BM_FT_LLF <- function(aMLE,bMLE,data){
 		lnl <- -aMLE*(1-exp(-bMLE*tn))+n*log(aMLE)+n*log(bMLE)-bMLE*sum(data)
 		return(lnl)
}

#Estimated number of faults remaining

GO_BM_FT_FaultsRemaining <- function(aMLE,n){
	FaultsRemaining <- abs(aMLE-n)
	return(FaultsRemaining )
}

#Reliability
GO_BM_FT_Reliability <- function(bMLE,tn){
	Reliability <- exp(-bMLE*tn)
	return(Reliability)
}

#Mean-time-to-failure (MTTF)
GO_BM_FT_MTTF <- function(bMLE){
	MTTF <- 1/bMLE
	return(MTTF)
	}