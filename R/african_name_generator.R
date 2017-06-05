#' Find out what your African name is!
#'
#' @param name A character that is your current, non-South African name
#' @param boy  A logical which is either TRUE if you are a boy, and FALSE if you are a girl or just not a boy
#' @return There is no return statement, it outputs a string with the user's name
#'
#' @examples
#' african_name("ben")
#' african_name("stacy", boy = FALSE)
#' @export

african_name = function(name, boy = TRUE){
  #error checkers here

  #gender = toupper(gender)
  if(class(name) != "character"){
    stop("name must be a character")
  }

  if(class(boy) != "logical"){
    stop("invalid parameter for boy, not a logical")
  }

  if(boy){
    name = toupper(name) #Changes all the characters to uppercase

    first = substr(name, 0,1) #pulls the first letter of the string

    ascii = utf8ToInt(first) #converts the first letter into ascii code

    name_list = data.frame( name = snames[snames$ASCII_1 == ascii, 4]) # matches the ascii code to the value in the table

    name_list = na.omit(name_list) # removes any null values in the name list data frame

    african = name_list[runif(1,1,nrow(name_list)+1),1] # pulls the name from the set of names generated and randomizes it
  }
  else{
    name = toupper(name)
    first = substr(name, 0, 1)
    ascii = utf8ToInt(first)
    name_list = data.frame(name = snames[snames$ASCII == ascii, 1])
    name_list = na.omit(name_list)
    african = name_list[runif(1,1,nrow(name_list)+1),1]
  }

  sprintf("Your South African name is %s", african) # spits out a string with the user's african name
}
