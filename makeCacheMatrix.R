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
