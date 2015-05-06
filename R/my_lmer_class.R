#' @importFrom methods setClassUnion
setClassUnion("maybeLmer", c("lmerMod", "NULL"))

#' The my_lmer class
#' @section Slots:
#'   \describe{
#'    \item{\code{Weight}}{the name of the weight variable or "" if unweighted}
#'    \item{\code{Model}}{Either a lmer model or NULL}
#'   }
#' @name my_lmer-class
#' @rdname my_lmer-class
#' @exportClass my_lmer
#' @aliases my_lmer-class
#' @importFrom methods setClass
#' @importClassesFrom lme4 lmerMod
#' @docType class
#' @include my_virtual_class.R
setClass(
  "my_lmer",
  representation = representation(
    Weight = "character",
    Model = "maybeLmer"
  ),
  contains = "my_virtual"
)
