
QALE <- function(model, covariates, var.index, 
                 tau = seq(0.1,0.9,0.1), n.bins = 40, ci.level = 0,
                 nY=101, I_basis, knots = knots,
                 M_basis = NULL, c1 = 10, c2 = 10,
                 p_a=0.5,p_b=0.975, gpd.tail = F) {
  X <- covariates
  N <- nrow(X)  # sample size
  d <- ncol(X)  # number of predictor variables
  J <- var.index # predictor index
  K <- n.bins # number of partition on each X_j
  ntau = length(tau)
  n.knots <- ncol(I_basis)
  # knots = seq(1/(n.knots-2), 1-1/(n.knots-2), length=n.knots-3)
  
  firstCheck <- class(X[,J[1]]) == "numeric" || class(X[,J[1]]) == "integer"
  if (!firstCheck)
    stop("X[,var.index] must be numeric or integer.")
  # find the vector of z values corresponding to the quantiles of X[,J]
  z <- c(min(X[,J]), as.numeric(quantile(X[,J],seq(1/K,1,length.out=K), type=1)))  # vector of K+1 z values
  z <- unique(z)  # necessary if X[,J] is discrete, in which case z could have repeated values
  K <- length(z)-1 # reset K to the number of unique quantile points
  fJ <- numeric(K)
  # group training rows into bins based on z
  a1 <- as.numeric(cut(X[,J], breaks=z, include.lowest=TRUE)) # N-length index vector indicating into which z-bin the training rows fall
  X1 <- X
  X2 <- X
  X1[,J] <- z[a1]
  X2[,J] <- z[a1+1]
  
  if(is.null(M_basis) | gpd.tail == F){
    y.hat1 <-predict.spqrk(model = model, type = 'QF', knots = knots,
                           covariates=X1, I_basis = I_basis, tau = tau)
    y.hat2 <- predict.spqrk(model = model, type = 'QF', knots = knots,
                            covariates=X2, I_basis = I_basis, tau = tau)  
  } else {
    
    pred1        <- as.matrix(model(list(covariates = X1,
                                         y=matrix(0,nrow=nrow(X1),ncol=1), I_basis = I_basis)))
    
    xi1 = pred1[,n.knots+1]
    y.hat1 <- predict.spqrk.GPD(model = model, type = 'QF', knots = knots,
                                covariates=X1, I_basis = I_basis, tau = tau,
                                M_basis = M_basis, c1 = c1, c2 = c2, p_a = p_a, p_b = p_b)
    pred2        <- as.matrix(model(list(covariates = X2,
                                         y=matrix(0,nrow=nrow(X2),ncol=1), I_basis = I_basis)))
    
    xi2 = pred2[,n.knots+1]
    y.hat2 <- predict.spqrk.GPD(model = model, type = 'QF', knots = knots,
                                covariates=X2, I_basis = I_basis, tau = tau,
                                M_basis = M_basis, c1 = c1, c2 = c2, p_a = p_a, p_b = p_b)
  }
  
  # print(dim(y.hat1));print(dim(y.hat2))
  Delta <- y.hat2-y.hat1
  if (is.null(dim(Delta))) dim(Delta) <- c(N,1)
  # Delta is N x length(tau)
  DDelta <- matrix(0, nrow = K, ncol = ntau)
  for (i in 1:ntau) {
    DDelta[,i] <- as.numeric(tapply(Delta[,i], a1, mean)) #K-length vector of averaged local effect values
  }
  fJ <- rbind(0,apply(DDelta,2,cumsum)) #K+1 length vector
  #Xi ALE
  if(gpd.tail){
    Delta.xi <- xi2-xi1
    dim(Delta.xi) <- c(N,1)
    DDelta.xi = as.numeric(tapply(Delta.xi, a1, mean))
    fJ.xi <- rbind(0,apply(as.matrix(DDelta.xi),2,cumsum)) #K+1 length vector
  }
  x <- z
  colnames(fJ) <- paste0(tau*100, "%")
  names(dimnames(fJ))[1:2] <- c("X","tau")
  
  #end of if (length(J) == 1) statement
  if(gpd.tail) return(list(x = x, ALE = fJ, ALE.xi = fJ.xi)) else return(list(x = x, ALE = fJ)) 
}
