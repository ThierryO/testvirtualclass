#' Create a my_inla object
#' @param data the dataset
#' @param meta1 the first metadata
#' @param status the status of the analysis
#' @param model.fit The fitted model
#' @name my_inla
#' @rdname my_inla
#' @exportMethod my_inla
#' @docType methods
#' @importFrom methods setGeneric
setGeneric(
  name = "my_inla", 
  def = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, model.fit
  ){
    standard.generic(my_inla)
  }
)

#' @rdname my_inla
#' @aliases my_inla,my_inla-methods
#' @importFrom methods setMethod
#' @include my_inla_class.R
setMethod(
  f = "my_inla", 
  signature = "ANY",
  definition = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, model.fit
  ){
    if(missing(status)){
      status <- "new"
    }
    new(
      "my_inla",
      Data = data,
      Meta1 = meta1,
      Meta2 = meta2,
      Meta3 = meta3,
      Meta4 = meta4,
      Meta5 = meta5,
      Meta6 = meta6,
      Status = status
    )
  }
)

#' @rdname my_inla
#' @aliases my_inla,my_inla-methods
#' @importFrom methods setMethod
#' @include my_inla_class.R
#' @include my_inla_model_class.R
setMethod(
  f = "my_inla", 
  signature = signature(data = "my_inla", model.fit = "inla"),
  definition = function(
    data, meta1, meta2, meta3, meta4, meta5, meta6, status, model.fit
  ){
    new(
      "my_inla_model",
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
