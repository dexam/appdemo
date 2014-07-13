#' Hello World
#' 
#' Basic hello world function to be called from the demo app
#' 
#' @export
#' @param myname your name. Required.
hello <- function(myname = ""){

x<-sqrt(as.numeric(myname))

  if(myname == ""){
    stop("Tell me your name!")
  }
  list(
    message = paste("hello, you entered", myname, " and the square root is ",x)
  )
}
