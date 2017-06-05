#' Table of common south African names.
#'
#' A dataset containing the name, orbital radius and orbital eccentricity of
#' the planets in the Solar System. I'm old school, so Pluto is still in there.
#'
#' @format A data frame with 48 records and 6variables:
#' \describe{
#'   \item{Girl}{List of common female south african names;}
#'   \item{First Letter}{First letter of the name;}
#'   \item{ASCII}{ASCII Value of the first letter of the name}
#'   \item
#'   \item
#'   \item
#' }
#' @source
#' These data were constructed using information from NASA's Planetary Fact Sheet at http://nssdc.gsfc.nasa.gov/planetary/factsheet/.
#' @examples
#' plot(eccentricity ~ distance, data = planets)



if (FALSE){

  #running this will only work on Author's computer as the file path to the csv is different
  library(readr)
  snames = read_csv("~/South Africa/Week 1/Package/South african names.csv")
}


