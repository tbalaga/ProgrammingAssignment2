## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) m <<- solve
        getinverse <- function() m
        list(set = set, get = get,
             setinverse = setinverse,
             getinverse = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
		
		## get the inverse from x
		
		## check if the inverse is already calculated
		m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
		
		## inverse is not calculated/catched yet. Calculate inverse of the matrix
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}

9a7d211e2b729f6188655af1972e20ef6a94a2dc