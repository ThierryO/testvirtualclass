#' Create a my_inla object
#' @inheritParams my_lmer
#' @name my_inla
#' @rdname my_inla
#' @exportMethod my_inla
#' @docType methods
#' @importFrom methods setGeneric
setGeneric(
  name = "my_inla", 
  def = function(
    data, ..., model.fit
  ){
    standard.generic("my_inla")
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
    data, ..., model.fit
  ){
    dots <- list(...)
    if(is.null(dots$status)){
      dots$status <- "new"
    }
    new(
      "my_inla",
      Data = data,
      Meta1 = dots$meta1,
      Meta2 = dots$meta2,
      Meta3 = dots$meta3,
      Meta4 = dots$meta4,
      Meta5 = dots$meta5,
      Meta6 = dots$meta6,
      Status = dots$status,
      Model = NULL
    )
  }
)

#' @rdname my_inla
#' @aliases my_inla,my_inla-methods
#' @importFrom methods setMethod
#' @include my_inla_class.R
setMethod(
  f = "my_inla", 
  signature = signature(data = "my_inla", model.fit = "inla"),
  definition = function(
    data, ..., model.fit
  ){
    dots <- list(...)
    new(
      "my_inla",
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
