makeCacheMatrix <- function(X = matrix()){

myinverse <- NULL

set <- function(Y){
x <<- Y
myinverse <<- NULL
}

get <- function() X

setinverse <- function(inverse) myinverse <<- inverse

getinverse <- function() myinverse

list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}

cacheSolve <- function(X, ...){

myinverse <- X$getinverse()

if(!is.null(myinverse)){
message("getting cached data")
return(myinverse)
}

data <- X$get()
myinverse <- solve(X, ...)
X$setinverse(myinverse)

myinverse

}