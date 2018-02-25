makeCacheMatrix <- function(x = matrix()) {
    m <- NULL #cache
    set <- function(y) {
      x <<- y    # Set the value
      m <<- NULL # Clear the cache
    }
    get <- function() x
    setInverse <- function(inverse) m <<- inverse
    getInverse <- function() m
    list(set = set, get = get,
         setInverse = setInverse,
         getInverse = getInverse)
}

