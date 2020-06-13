## Put comments here that give an overall description of what your
## functions do

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


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
