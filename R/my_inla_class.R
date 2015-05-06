#' @importFrom methods setOldClass
setOldClass("inla")

#' @importFrom methods setClassUnion
setClassUnion("maybeInla", c("inla", "NULL"))

#' The my_inla class
#' @section Slots:
#'   \describe{
#'    \item{\code{Model}}{Either a inla model or NULL}
#'   }
#' @name my_inla-class
#' @rdname my_inla-class
#' @exportClass my_inla
#' @aliases my_inla-class
#' @importFrom methods setClass
#' @docType class
#' @include my_virtual_class.R
setClass(
  "my_inla",
  representation = representation(
    Model = "maybeInla"
  ),
  contains = "my_virtual"
)
