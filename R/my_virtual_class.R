#' The virtual class
#' 
#' @section Slots:
#'   \describe{
#'    \item{\code{Data}}{a data.frame}
#'    \item{\code{Meta}}{The meta data slot}
#'    \item{\code{Status}}{a description of the status}
#'   }
#' @name my_virtual-class
#' @rdname my_virtual-class
#' @exportClass my_virtual
#' @aliases my_virtual-class
#' @importFrom methods setClass
#' @docType class
#' @include my_metadata_class.R
setClass(
  "my_virtual",
  representation = representation(
    Data = "data.frame",
    Meta = "my_metadata",
    Status = "character",
    "VIRTUAL"
  )
)
