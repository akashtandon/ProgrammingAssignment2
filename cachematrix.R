## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 inv <- NULL   ## The inverse starts out as NULL
  
  ## By setting the object, I assign the new argument to be my stored value and
  ## reset my inverse calculation
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  
  ## Returns my internal object
  get <- function() x
  
  ## Get and Set functions for the inverse, as above
  setInverse <- function(inverse) inv <<- inverse
  getInverse <- function() inv
  list(set = set, get = get,
       setInverse = setInverse,
       getInverse = getInverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if(!is.null(inv)) {
    message("getting cached data")
    return(inv)
}
