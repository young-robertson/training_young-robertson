#Writing in an Rscript to write packages, it's more portable in Rscripts

#Problem - temp data in F, and constantly need to convert from F to C but forget the formula

airtemps = c(212 , 30.3, 78, 32)   #Temps in F

celsius1 = (airtemps[1]-32)*(5/9)
celsius2 = (airtemps[2]-32)*(5/9)
celsius3 = (airtemps[3]-32)*(5/9)
celsius4 = (airtemps[4]-32)*(5/9)
#copy and pasting is prone to error, so might be better to write a function if copying/pasting a lot

# name function (fahr_to_celsius), use the "function" function, fahr is the input to the function (abstracted name of what you're passing - airtemps), 
#then put the expression or what the function does in {}, then specify what you're getting out of the fn
#' Fahrenheit to Celsius
#' can write what it does
#'
#' @param fahr Temperature in Fahrenheit as a vector
#'
#' @return Temperature in Celsius
#' @export Expressing whether you want this package to be public facing
#'
#' @examples
#' fahr_to_celsius(c(212,32))  #the data range are 212 to 32

#code -> Insert Roxygen Skeleton to get the above function annotation structure, put cursor in the name of the 
#function and then go to code menu to insert Roxygen Skeleton
fahr_to_celsius = function(fahr){
  celsius = (fahr - 32)*(5/9)
  return(celsius)
}


#below is testing the function
celsius5 = fahr_to_celsius(airtemps[1])  #run the fn for airtemps1
celsius1 == celsius5  #TRUE, cel1 should be equal to cel5

#can run fn over entire airtemps data

airtemps_c = fahr_to_celsius(fahr = airtemps)
airtemps_c

###New function
#now write a function to convert celsius back to farhenheit
celsius_to_fahr = function(celsius){
  fahr = (celsius*9/5 +32)
  return(fahr)
}

(airtemps_f = celsius_to_fahr(celsius=airtemps_c))
airtemps_f == airtemps  #are these equal? yes, trues across the board
