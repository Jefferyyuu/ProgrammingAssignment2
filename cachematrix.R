## Caching the Inverse of a Matrix
##  write a pair of functions that cache the inverse of a matrix.


## makeCacheMatrix: This function creates a special “matrix” object that can cache its inverse.
## set the value of the matrix
## get the value of the matrix 
## set the value of the inverse 
## get the value of the inverse
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL 
  set <- function(y){
      x <<- y 
      inv <<- NULL
  }
  get <- function()x
  
  setinverse <- function(solve)inv <<- solve
  getinverse <- function() inv
  
  list(set = set, 
       get = get, 
       setinverse = setinverse, 
       getinverse = getinverse)

}


## This function computes the inverse of the special "matrix" created by 
## makeCacheMatrix above. If the inverse has already been calculated (and the 
## matrix has not changed), then it should retrieve the inverse from the cache

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getinverse()
  if(!is.null(inv)){
        message("getting cached data")
        return(inv)
  }
  data <- x$get()
  inv <- solve(data,...)
  x$setinverse(inv)
  inv
}
