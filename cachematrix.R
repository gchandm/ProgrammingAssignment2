## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

       m <- NULL
       set <- function(y){
                   x <<- y
                   m <<- NULL
       }
            
       get <- function() x
       
       setInverse <- function(inverse) m <<- inverse
       
       getInverse <- function() m

       # returning list object : 
       list( set = set , 
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
            
}


## Write a short comment describing this function

cacheSolve <- function( x, ...) {
        ## Return a matrix that is the inverse of 'x'

            inv <- x$getInverse()
            
            if(is.null(inv)){
                        # cashe not Availabe.. 
                        data <- x$get()
                        inv <- solve(data, ...)  # saving to cache and returning
                        x$setInverse(inv)
                        inv  
            } else {
                        # print("From Cache")
                        # returning cached value/Object
                        return(inv)        
            }
            
          
}


