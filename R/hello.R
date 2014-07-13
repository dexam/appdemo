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





hypotheek<-function(P=100000,I=5, L=30, T=30, A=0){
P=P-A
N = L *12
J = I/(12*100)

M = P * (J / (1-(1+J)^(-N)))

H<-c();C<-c();Q<-c();i=1
while(P > 0){
H[i] = P * J
C[i] = M - H[i]
Q[i] = P - C[i]
P = Q[i]

i = i+1
}

NET = M-(H*(T/100))

return(list(balance=Q, monthly_payments_bruto=M,monthly_payments_netto=NET, interest_payments=H, capital_payments=C))

}

