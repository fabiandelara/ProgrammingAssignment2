
# This function creates a special "matrix" object that can cache its inverse

makeCacheMatrix <- function(x = matrix) {
  matr <- NULL
  
  # Setting the matrix value 
  set <- function(y) {
    x <<- y 
    matr <<- NULL 
  }
  
  # Getting the matrix value 
  get <- function() x
  
  # Set the matrix inverse value
  setInverse <- function(solve) a <- solve 
  
  # Get the matrix inverse value
  getInverse <- function() matr
  
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
