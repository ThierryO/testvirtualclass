#' The my_lmer_model class
#' @section Slots:
#'   \describe{
#'    \item{\code{Model}}{a lmer model}
#'   }
#' @name my_lmer_model-class
#' @rdname my_lmer_model-class
#' @exportClass my_lmer_model
#' @aliases my_lmer_model-class
#' @importFrom methods setClass
#' @importClassesFrom lme4 lmerMod
#' @docType class
#' @include my_lmer_class.R
setClass(
  "my_lmer_model",
  representation = representation(
    Model = "lmerMod"
  ),
  contains = "my_lmer"
)
