## Put comments here that give an overall description of what your
## functions do
## It's a pair of functions that cache the inverse of a matrix. 

## Write a short comment describing this function
##This function defines a local variable i and defines and returns another function as its return value. 
##Its define the environment.  
makeCacheMatrix <- function(x = matrix()) {
    i <- NULL
    set <- function(y) {
      x <<- y
      i <<- NULL
    }
    get <- function() x
    setinverse <- function(inverse) i <<- inverse
    getinverse <- function() i
    list(set = set, get = get,
         setinverse = setinverse,
         getinverse = getinverse)}




## Write a short comment describing this function
## This function returns the inverse function used in maKeCacheMatrix.
cacheSolve <- function(x, ...) {
  i <- x$getinverse()
  if(!is.null(i)) {
    message("getting cached data")
    return(i)
  }
  data <- x$get()
  i <- solve(data, ...)
  x$setinverse(i)
  i
}

        ## Return a matrix that is the inverse of 'x'

