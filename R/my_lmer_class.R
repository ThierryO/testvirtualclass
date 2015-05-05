#' The my_lmer class
#' @section Slots:
#'   \describe{
#'    \item{\code{Data}}{a data.frame}
#'    \item{\code{Meta1}}{The first meta data slot}
#'    \item{\code{Meta2}}{The second meta data slot}
#'    \item{\code{Meta3}}{The third meta data slot}
#'    \item{\code{Meta4}}{The fourth meta data slot}
#'    \item{\code{Meta5}}{The fifth meta data slot}
#'    \item{\code{Meta6}}{The sixth meta data slot}
#'    \item{\code{Status}}{a description of the status}
#'    \item{\code{Weight}}{the name of the weight variable or "" if unweighted}
#'   }
#' @name my_lmer-class
#' @rdname my_lmer-class
#' @exportClass my_lmer
#' @aliases my_lmer-class
#' @importFrom methods setClass
#' @docType class
setClass(
  "my_lmer",
  representation = representation(
    Data = "data.frame",
    Meta1 = "integer",
    Meta2 = "integer",
    Meta3 = "integer",
    Meta4 = "integer",
    Meta5 = "character",
    Meta6 = "character",
    Status = "character",
    Weight = "character"
  )
)
