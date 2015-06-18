## Put comments here that give an overall description of what your
## functions do

## makeCacheMatrix function which return encapsulated matrix
## param variable of type matrix
## return list

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(l) {
    x <<- l
    #reset the cache on change
    inv <<- NULL
  }
  get <- function() {
    x
  }
  getInverce <- function () {
    inv
  }
  setInverce <- function (i) {
    inv <<- i
  }
  list(set = set, get = get, getInverce = getInverce, setInverce = setInverce)

}


## Cache function use to compute the inverse of matrix 
## return cached inverse of matrix if exist, or compute the inverse 

cacheSolve <- function(x, ...) {
  inv <- x$getInverce();
  if(is.null(inv))
  {
    inv <- solve(x$get(), ...);
  }
  else
  {
    print("Getting cached data");
  }
  x$setInverce(inv);
  inv
}
