## The function makeCacheMatrix creates a special 'matrix' object that can
## cache its inverse

## It returns a list containing the following functions:
## - Function to set the value of the matrix
## - Function to get the value of the matrix
## - Function to set the value of the inverse
## - Function to get the value of the inverse

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
         getinverse = getinverse)
}


## The function cacheSolve computes the inverse of the special 'matrix'
## returned by makeCacheMatrix; if inverse already calculated, returns the
## cached inverse

## It returns a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...) {
        i <- x$getinverse()
        if(!is.null(i)) {
            message('Getting cached data...')
            return(i)
        }
        data <- x$get()
        i <- solve(data, ...)
        x$setinverse(i)
        i
}
