cacheSolve <- function(x, ...) {
  m <- x$getInverse() # check cache for inverse
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  # if cache is empty, find inverse and cache result
  data <- x$get()  
  m <- solve(data) 
  x$setInverse(m)  
  m                
}

