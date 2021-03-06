#' @docType methods
#' @rdname scl_inter-methods
#' @title Extract Image scl_inter attribute 
#' @name scl_inter-methods
#' @aliases scl_inter,character-method
#' @import oro.nifti
#' @export
#' @description scl_inter method for character types
#' @param object is a filename to pass to \link{fslval}
#' 
setMethod("scl_inter", "character", function(object) { 
  object = path.expand(object)
  stopifnot(file.exists(object))
  res = fslval(object, keyword = "scl_inter", verbose = FALSE)
  res = as.numeric(res)
  return(res)
})
