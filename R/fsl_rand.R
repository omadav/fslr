#' @rdname fslrand
#' @aliases fsl_rand
#' @export
#' @note Functions with underscores have different defaults
#' and will return an output filename, so to be used for piping
fsl_rand = function(
  ...,
  outfile = tempfile(fileext = ".nii.gz"),
  retimg = FALSE
) {
  fslrand(..., outfile = outfile, retimg = retimg)
  return(outfile)
}
