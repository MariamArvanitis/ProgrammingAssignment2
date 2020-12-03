## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}


makeCacheMatrix <- function(x=matrix()){
                                          ## We assume that the matrix we supply here is invertible
  inv <- NULL
  set <- function(y){
                                          ## Here I set the value of the matrix
    x <<- y
    inv <<- NULL
                                          ## The double arrow assigment is an operator, and it is useful with closer to preserve they stood inside of R object
  }
  get <- function() {x}
                                          ## Here I am getting the value of matrix
  setinverse <-function(inverse) {inv<<-inverse}
                                          ## Setting the value of the Inverse
  getinverse <- function() {inv}
                                          ## Here I got the value of the Inverse 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

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
