#' The metadata class
#' 
#' @section Slots:
#'   \describe{
#'    \item{\code{Meta1}}{The first meta data slot}
#'    \item{\code{Meta2}}{The second meta data slot}
#'    \item{\code{Meta3}}{The third meta data slot}
#'    \item{\code{Meta4}}{The fourth meta data slot}
#'    \item{\code{Meta5}}{The fifth meta data slot}
#'    \item{\code{Meta6}}{The sixth meta data slot}
#'   }
#' @name my_metadata-class
#' @rdname my_metadata-class
#' @exportClass my_metadata
#' @aliases my_metadata-class
#' @importFrom methods setClass
#' @docType class
setClass(
  "my_metadata",
  representation = representation(
    Meta1 = "integer",
    Meta2 = "integer",
    Meta3 = "integer",
    Meta4 = "integer",
    Meta5 = "character",
    Meta6 = "character"
  )
)
