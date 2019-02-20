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
