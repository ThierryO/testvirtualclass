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

#' @rdname my_lmer
#' @aliases my_lmer,lmerMod-methods
#' @importFrom methods setMethod
setMethod(
  f = "my_lmer", 
  signature = signature(data = "my_lmer", model.fit = "lmerMod"), 
  definition = function(
    data, meta1, status, weight, model.fit
  ){
    new(
      "my_lmer_model",
      Data = data@Data,
      Meta1 = data@Meta1,
      Status = status,
      Weight = data@Weight,
      Model = model.fit
    )
  }
)
