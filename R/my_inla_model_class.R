setOldClass("inla")

#' The my_inla class
#' @name my_inla_model-class
#' @rdname my_inla_model-class
#' @exportClass my_inla_model
#' @aliases my_inla_model-class
#' @docType class
#' @include my_inla_class.R
setClass(
  "my_inla_model",
  representation = representation(
    Model = "inla"
  ),
  contains = "my_inla"
)
