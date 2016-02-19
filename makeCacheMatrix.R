
# This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix) {
  matr <- NULL
  set <- function(y) {
    x <<- y 
    matr <<- NULL 
  }
  get <- function() x
  setInverse <- function(solve) a <- solve 
  getInverse <- function() matr
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
