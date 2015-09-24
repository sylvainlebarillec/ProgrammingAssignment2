## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(matrice = matrix()) {
m <- NULL
set <- function(y) {
matrice <<- y
m <<- NULL
}
  get <- function() matrice
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)

}


## Write a short comment describing this function

cachesolve <- function(matrice, ...) {
## Return a matrix that is the inverse of 'matrice'
  m <- matrice$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- matrice$get()
  m <- solve(data, ...)
  matrice$setsolve(m)
  m
}
##Test of cachesolve function
##mamatrice <- matrix(c(-1,1,-2,2,2,8,5,3,10), nrow=3, ncol=3)
##testducache <- makeCacheMatrix(mamatrice)
#first calculation
##cachesolve(testducache)
#already in the cache. No calculation needed
##cachesolve(testducache)

