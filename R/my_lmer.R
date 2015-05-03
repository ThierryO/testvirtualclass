#' Create a my_lmer object
#' @param data the dataset
#' @param meta1 the first metadata
#' @param status the status of the analysis
#' @param weight The optional weight 
#' @param model.fit The fitted model
#' @name my_lmer
#' @rdname my_lmer
#' @exportMethod my_lmer
#' @docType methods
#' @importFrom methods setGeneric
setGeneric(
  name = "my_lmer", 
  def = function(
    data, meta1, status, weight, model.fit
  ){
    standard.generic(my_lmer)
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
    data, meta1, status, weight, model.fit
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
      Status = status,
      Weight = weight
    )
  }
)
