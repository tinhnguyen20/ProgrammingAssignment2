## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
cache = NULL
  set <- function(y){
    x <<- y 
    cache <<- NULL
  }
  get <- function(){
    x
  }
  setInverse <- function(){
    cache <<- solve(x)
  }
  getInverse <- function(){
    cache
  }
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
   m <- x$getInverse()
  if(!is.null(m)){
    solve(x$get())
  }
  else{
    m
  }
