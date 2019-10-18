## Functions that caching the Inverse of a reversible Matrix.

## Create a speical matrix named"makeCacheMatrix"which can cache its inverse;
generate lists with methods to set/get value of original matrix, and its inverse.

makeCacheMatrix <- function(x = matrix()) {
      i <- NULL
      
      ## Set the value of the matrix      
      set <- function(y) {
            x <<- y
            i <<- NULL
      }
      
      ## Get the value of the matrix
      get <- function() x {
            ## return the value of the matrix
      }
      
      ## Set the value of the inverse
      setinverse <<- function(i) {
            i <<- inverse
      }
      
      ## get the value of the inverse
      getinverse <<- funtion() i{
            ## return the value of the inverse 
      }
      
      ## return the list to parent enviromment.
      list(set = set, get = get, 
           setinverse = setinverse, 
           getinverse = getinverse )
}


## compute the inverse of the special matrix returned by "makeCacheMatrix ".
If the inverse has already been calculated (and the matrix has not changed), 
then the cachesolve should retrieve the inverse from the cache.


cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
      mtr <- x$getinverse()
      
      ## Return the inverse if its already been calculated
      if(!is.null(mtr)) {
            message("getting cached data")
            return(mtr)
      }
      
      ## Get data from 'x'.
      data <- x$get()
      
      ## Calculate inverse of mtr.
      mtr <- solve(data, ...)
      
      ## Set the inverse of 'mtr' to 'x'
      x$setinverse(mtr)
      
      ## Return mtr
      mtr
}
