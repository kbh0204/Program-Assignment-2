## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  mt <- NULL
  set <- function(y){
    x<<-y
    mt<<-NULL
  }
  get <- function() x
  setmatrix <- function(matrix) mt<<-matrix
  getmatrix <- function () mt
  list(set = set, get = get, setmatrix=setmatrix, getmatrix= getmatrix)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  mt <- x$getmatrix()
  if(!is.null(mt)){
    message('getting cached data')
    return(mt)
  }
  data <-x$get()
  mt<-solve(data)
  x$setmatrix(mt)
  mt
  
}
