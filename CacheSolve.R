cachesolve <- function(x, ...){
  inv <- x$getInverse() ##Here in this line I return a matrix that is inverse of X and assign it to Inv
  if(!is.null(inv)){ ##Checking if the Inverse is already calculated
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...) ## Computing the inverse 
  x$setInverse(inv)
  inv
}
