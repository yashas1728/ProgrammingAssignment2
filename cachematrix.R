## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
###It is a function that cache the inverse of a mtarix, there are two functions involved in this example.
##The first function is to make a matrix and assign inverse of a matrix as a NULL matrix and the next function i.e 
##setInverse and getInverse is to set and get the value of the above inverse. 

makeCacheMatrix <- function(x = matrix()) {
    inverse <- NULL
    set <- function(y){
        x <<- y
        inverse <<- NULL
  }
    get <- function() x
    setInverse <- function(matrixSolution) inverse <<- matrixSolution
    getInverse <- function() inverse
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function evaluates the inverse of the cached matrix obtained through the above "makeCacheMatrix" function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inverse <- x$getInverse()
    if(!is.null(inverse)){
        message("receiving cached data")
        return(inverse)
  }
  data <- x$get()
  inverse <- solve(data)
  x$setInverse(inverse)
  inverse      
}
