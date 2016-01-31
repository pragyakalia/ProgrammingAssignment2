<<<<<<< HEAD
makeCacheMatrix <- function(x = matrix()) {
=======
MakeCacheMatrix <- function(x = matrix()) {
>>>>>>> ff0253efc5f57147fc54ba816496cdb1204e86bd
        ## x: a square invertible matrix
        ## return: a list containing functions to
        ##              1. set the matrix
        ##              2. get the matrix
        ##              3. set the inverse
        ##              4. get the inverse
        ##         this list is used as the input to cacheSolve()
        
<<<<<<< HEAD
        inv <- NULL
        set <- function(y) {
=======
        inv = NULL
        set = function(y) {
>>>>>>> ff0253efc5f57147fc54ba816496cdb1204e86bd
                # use `<<-` to assign a value to an object in an environment 
                # different from the current environment. 
                x <<- y
                inv <<- NULL
        }
<<<<<<< HEAD
        get <- function() x
        setinv <- function(inverse) inv <<- inverse 
        getinv <- function() inv
=======
        get = function() x
        setinv = function(inverse) inv <<- inverse 
        getinv = function() inv
>>>>>>> ff0253efc5f57147fc54ba816496cdb1204e86bd
        list(set=set, get=get, setinv=setinv, getinv=getinv)
}

cacheSolve <- function(x, ...) {
        ## x: output of makeCacheMatrix()
        ## return: inverse of the original matrix input to makeCacheMatrix()
        
<<<<<<< HEAD
        inv <- x$getinv()
=======
        inv = x$getinv()
>>>>>>> ff0253efc5f57147fc54ba816496cdb1204e86bd
        
        # if the inverse has already been calculated
        if (!is.null(inv)){
                # get it from the cache and skips the computation. 
                message("getting cached data")
                return(inv)
        }
        
        # otherwise, calculates the inverse 
<<<<<<< HEAD
        mat.data <- x$get()
        inv <- solve(mat.data, ...)
=======
        mat.data = x$get()
        inv = solve(mat.data, ...)
>>>>>>> ff0253efc5f57147fc54ba816496cdb1204e86bd
        
        # sets the value of the inverse in the cache via the setinv function.
        x$setinv(inv)
        
        return(inv)
}

