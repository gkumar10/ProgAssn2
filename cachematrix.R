## Put comments here that give an overall description of what your
## functions do

## checks if a matrix is invertible. if invertible stores in cache as 'x'

makeCacheMatrix <- function(x = matrix()) {

  #invx <- NULL
  if (det(x) == 0) {
    message(" Matrix not invertible. Exiting function.")
  } else {
      specialx <<- x
      invx <<- solve(specialx)
      #print("Matrix is invertible. Stored in cache as:")
      #print(specialx)
      print("Matrix is invertible. Inverse stored in cache as:")
      print(invx)
    }
}


## returns inverse if stored in cache. otherwise, calculated inverse

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  
  if (!is.null(invx)) {
    message("Getting cached data..")
    return(invx)
  } else {
      print("No matrix in cache. Inverse is:")
      invx <<- solve(specialx)
      print(invx)
    }
}
