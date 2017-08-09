## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
<<<<<<< HEAD

makeCacheMatrix <- function(x = matrix()) {

=======
#make

#CacheMatrix accepts a matrix and returns a list of functions to get and set the matrix, 
#and to get and set it's inverse value.


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) m <<- inverse
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)
>>>>>>> First commit
}


## Write a short comment describing this function
<<<<<<< HEAD

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
=======
#catchesolve accepts the function list from makeCacheMatrix and returns the inverse of the afformetioned matrix.
#If the variable m is not a null value, the value to m will be returned.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  m <- x$getinverse()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
>>>>>>> First commit
}
