#' Create a my_lmer object
#' @param data the dataset
#' @param meta1 the first metadata
#' @param meta2 the second metadata
#' @param meta3 the third metadata
#' @param meta4 the fourth metadata
#' @param meta5 the fifth metadata
#' @param meta6 the sixth metadata
#' @param status the status of the analysis
#' @param weight The optional weight 
#' @param model.fit The fitted model
#' @name my_lmer
#' @rdname my_lmer
#' @exportMethod my_lmer
#' @docType methods
setGeneric(
  name = "my_lmer", 
  def = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, weight, model.fit
  ){
    standard.generic(my_lmer)
  }
)

#' @rdname my_lmer
#' @aliases my_lmer,my_lmer-methods
#' @include my_lmer_class.R
setMethod(
  f = "my_lmer", 
  signature = "ANY",
  definition = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, weight, model.fit
  ){
    if(missing(status)){
      status <- "new"
    }
    if(missing(weight)){
      weight <- ""
    }
    new(
      "my_lmer",
      Data = data,
      Meta1 = meta1,
      Meta2 = meta2,
      Meta3 = meta3,
      Meta4 = meta4,
      Meta5 = meta5,
      Meta6 = meta6,
      Status = status,
      Weight = weight
    )
  }
)

#' @rdname my_lmer
#' @aliases my_lmer,my_lmer-methods
#' @include my_lmer_class.R
#' @include my_lmer_model_class.R
setMethod(
  f = "my_lmer", 
  signature = signature(data = "my_lmer", model.fit = "lmerMod"),
  definition = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, weight, model.fit
  ){
    new(
      "my_lmer_model",
      Data = data@Data,
      Meta1 = data@Meta1,
      Meta2 = data@Meta2,
      Meta3 = data@Meta3,
      Meta4 = data@Meta4,
      Meta5 = data@Meta5,
      Meta6 = data@Meta6,
      Status = status,
      Model = model.fit
    )
  }
)
