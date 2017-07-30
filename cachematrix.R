## Make a list of functions that can be used to cache matrix inversion
makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    
    get <- function(){
      x  
    } 
    
    setinversion <- function(inversion) {
        inv <<- inversion
    }
    
    getinversion <- function(){
        inv
    }
    
    list(set = set, 
         get = get, 
         setinversion = setinversion, 
         getinversion = getinversion)
}


## Calculate and cache matrix inversion 
cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- x$getinversion()
    if (!is.null(inv)){
        message("getting cached data")
        return (inv)
    }
    
    data <- x$get()
    inv <- solve(data, ...)
    x$setinversion(inv)
    inv
}









