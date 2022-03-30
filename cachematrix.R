## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
###It is a function that cache the inverse of a mtarix, there are two functions involved in this example.
##The first function is to make a matrix and assign inverse of a matrix as a NULL matrix and the next function i.e 
##setInverse and getInverse is to set and get the value of the above inverse. 

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y){
        x <<- y
        inv <<- NULL
  }
    get <- function() x
    setInverse <- function(matrixSolution) inv <<- matrixSolution
    getInverse <- function() inv
    list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function
## This function evaluates the inverse of the cached matrix obtained through the above "makeCacheMatrix" function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    inv <- x$getInverse()
    if(!is.null(inv)){
        message("receiving cached data")
        return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setInverse(inv)
  inv      
}
