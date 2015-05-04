#' The virtual class
#' 
#' @section Slots:
#'   \describe{
#'    \item{\code{Data}}{a data.frame}
#'    \item{\code{Meta1}}{The first meta data slot}
#'    \item{\code{Meta2}}{The second meta data slot}
#'    \item{\code{Meta3}}{The third meta data slot}
#'    \item{\code{Meta4}}{The fourth meta data slot}
#'    \item{\code{Meta5}}{The fifth meta data slot}
#'    \item{\code{Meta6}}{The sixth meta data slot}
#'    \item{\code{Status}}{a description of the status}
#'   }
#' @name my_virtual-class
#' @rdname my_virtual-class
#' @exportClass my_virtual
#' @aliases my_virtual-class
#' @importFrom methods setClass
#' @docType class
setClass(
  "my_virtual",
  representation = representation(
    Data = "data.frame",
    Meta1 = "integer",
    Meta2 = "integer",
    Meta3 = "integer",
    Meta4 = "integer",
    Meta5 = "character",
    Meta6 = "character",
    Status = "character",
    "VIRTUAL"
  )
)
