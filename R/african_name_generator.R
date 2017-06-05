#' Find out what your African name is
#'
#' @param name
#' @param boy
#' @return null
#'
#' @examples
#' african_name("ben")
#' african_name("stacy", boy = FALSE)
#' @export

african_name = function(name, boy = TRUE){
  #error checkers here

  #gender = toupper(gender)

  if(boy){
    name = toupper(name)
    first = substr(name, 0,1)
    ascii = utf8ToInt(first)
    name_list = data.frame( name = snames[snames$ASCII_1 == ascii, 4])
    name_list = na.omit(name_list)
    african = name_list[runif(1,1,nrow(name_list)+1),1]

  }
  else{
    name = toupper(name)
    first = substr(name, 0, 1)
    ascii = utf8ToInt(first)
    name_list = data.frame(name = snames[snames$ASCII == ascii, 1])
    name_list = na.omit(name_list)
    african = name_list[runif(1,1,nrow(name_list)+1),1]
  }

  sprintf("Your South African name is %s", african)
}
