.se.predict.nls <- function(object, newdata)
{
  se <- sqrt(apply(attr(predict(object,newdata),"gradient"),1, 
           function(x) sum(vcov(object)*outer(x,x))))
  return(se)
}
