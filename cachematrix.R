## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  
  #set the value of the matrix
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  
  #get the value of the matrix
  get <- function() x
  
  #set the inverse
  setinverse <- function(inverse) m <<- inverse
  
  #get the inverse
  getinverse <- function() m
  
  # Return
  list(set = set,
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}




## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  #assign the inverse
  m <- x$getinverse()
  
  #check if the cache is not empty
  if (!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  
  #if cache is empty calculate and return the inverse matrix
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  
        ## Return a matrix that is the inverse of 'x'
  m
}
