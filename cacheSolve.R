
# This function computes the inverse of the special "matrix" returned by makeCacheMatrix 

cacheSolve <- function(x, ...) {
  
  g_inv <- x$getInverse()
  
  if(!is.null(g_inv)) {
    message("getting cache dats")
    return(g_inv)
  }
  
  data <- x$get()
  
  g_inv <- solve(data, ...)
  
  x$setInverse(g_inv)
  
  g_inv
}
