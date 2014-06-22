# This function stores and retrieves cached matrices, as well as calclulates ther inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set  <- function(y) {
    x <<- y
    inv <<- NULL 
  }
  get  <- function() x
  setinverse <- function(inverse) inv  <<- inverse
  getinverse <- function() inv
  list(set= set, get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)
  
}

# This function checks to see if the matrix requested is in the cache and if the inverse
# has already been calculated. If the inverse is present in the cache, it is returned. If not,
# the inverse is calculated and returned.
cacheSolve <- function(x, ...) {
  inv  <- x$getinverse()
  if ( !is.null(inv) ) {
    message ("getting cached data.")
    return (inv)
  }
  data <- x$get()
  inv <- solve(data, ...)
  x$setinverse(inv)
  i
}