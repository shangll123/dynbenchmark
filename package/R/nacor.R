#' Na removed cor
#' @inheritParams stats::cor
#' @importFrom stats cor
#' @export
nacor <- function(x, y, method = "spearman") {
  is_na <- !is.finite(x) | !is.finite(y)
  stats::cor(x[!is_na], y[!is_na], method = method)
}
