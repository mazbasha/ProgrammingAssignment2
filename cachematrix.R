## This script stores the argument matrix and calculates its inverse.
## If the matrix is already inversed, this script will get the inverse matrix
## from the cache instead of calculating again.
## Condition: Pass only inversible matrix
## Author: Mazahar Basha Shaikh Date: 09.26.2015

## Get the matrix and store the inverse

makeCacheMatrix <- function(x)
{

  matr <- NULL          # initialize 
  
  set <- function(y)    # a valid matrix needs to be passed
  {
    x <<- y
    matr <<- NULL
  }
  
  getMat <- function()     # print the argument matrix
  {
    x
  }
  
  storeInv <- function(imat) # Store inverse matrix
  {
    
    matr <<- imat
    # matr <<- solve(x)
  }
  
  getInv <- function()  # print the inverse matrix
  {
    matr
  }
  
  list(set = set, getMat = getMat, storeInv = storeInv, getInv = getInv)
}



## This function reads the above function and calculates inverse

cacheSolve <- function(b)
{
  
  m <- b$getInv()
  
  if (!is.null(m))
  {
    message("getting cached data")
    print(m)
    
  }
  
  mat <- b$getMat()
  imat <- solve(mat)
  b$storeInv(imat)
  
  imat
  
}