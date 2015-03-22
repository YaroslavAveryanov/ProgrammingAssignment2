## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## Function that makes a list of functions and matrices
makeCacheMatrix <- function(x = matrix()) {
inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)
}


## Write a short comment describing this function
## Function that saves our inversed matrix
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinv()
        data <- x$get()
        inv <- ginv(data, ...)
        x$setinv(inv)
        inv
}
