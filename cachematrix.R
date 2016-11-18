## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
    m <- NULL
    setMatrix <- function(y) {
        x <<- y
        m <<- NULL
    }
    getMatrix <- function() {
        x
    }
    setCacheMatrix <- function(matrixToCashe) {
        m <<- matrixToCashe
    }
    getCacheMatrix <- function(){
        m
    }
    
    list(setMatrix = setMatrix, 
         getMatrix = getMatrix, 
         setCacheMatrix = setCacheMatrix, 
         getCacheMatrix = getCacheMatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
         m <- x$getCacheMatrix()
    if(!is.null(m)) {
        message("getting cached data")
        return(m)
    }
    data <- x$getMatrix()
    m <- solve(data, ...)
    x$setCacheMatrix(m)
    m
}
