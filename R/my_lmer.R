#' Create a my_lmer object
#' @param data the dataset
#' @param model.fit The fitted model
#' @param ... other arguments
#' @name my_lmer
#' @rdname my_lmer
#' @exportMethod my_lmer
#' @docType methods
#' @importFrom methods setGeneric
setGeneric(
  name = "my_lmer", 
  def = function(
    data, ..., model.fit
  ){
    standard.generic("my_lmer")
  }
)

#' @rdname my_lmer
#' @aliases my_lmer,my_lmer-methods
#' @importFrom methods setMethod
#' @include my_lmer_class.R
setMethod(
  f = "my_lmer", 
  signature = "ANY",
  definition = function(
    data, ..., model.fit
  ){
    dots <- list(...)
    if(is.null(dots$status)){
      dots$status <- "new"
    }
    if(is.null(dots$weight)){
      dots$weight <- ""
    }
    new(
      "my_lmer",
      Data = data,
      Meta1 = dots$meta1,
      Meta2 = dots$meta2,
      Meta3 = dots$meta3,
      Meta4 = dots$meta4,
      Meta5 = dots$meta5,
      Meta6 = dots$meta6,
      Status = dots$status,
      Weight = dots$weight,
      Model = NULL
    )
  }
)

#' @rdname my_lmer
#' @aliases my_lmer,my_lmer-methods
#' @importFrom methods setMethod
#' @include my_lmer_class.R
setMethod(
  f = "my_lmer", 
  signature = signature(data = "my_lmer", model.fit = "lmerMod"),
  definition = function(
    data, ..., model.fit
  ){
    dots <- list(...)
    new(
      "my_lmer",
      Data = data@Data,
      Meta1 = data@Meta1,
      Meta2 = data@Meta2,
      Meta3 = data@Meta3,
      Meta4 = data@Meta4,
      Meta5 = data@Meta5,
      Meta6 = data@Meta6,
      Status = dots$status,
      Model = model.fit
    )
  }
)
