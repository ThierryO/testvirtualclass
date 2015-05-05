#' The my_lmer class
#' @section Slots:
#'   \describe{
#'    \item{\code{Weight}}{the name of the weight variable or "" if unweighted}
#'   }
#' @name my_lmer-class
#' @rdname my_lmer-class
#' @exportClass my_lmer
#' @aliases my_lmer-class
#' @docType class
#' @include my_virtual_class.R
setClass(
  "my_lmer",
  representation = representation(
    Weight = "character"
  ),
  contains = "my_virtual"
)
