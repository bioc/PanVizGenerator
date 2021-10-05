.onAttach <- function(libname, pkgname) {
    if (!hasGO()) {
        packageStartupMessage("No gene ontology file detected. Run 'getGO()' to download latest version")
    }
    msg <- sprintf(
        "Package '%s' is deprecated and will be removed from Bioconductor
         version %s", pkgname, "3.15")
    .Deprecated(msg=paste(strwrap(msg, exdent=2), collapse="\n"))

    
}
