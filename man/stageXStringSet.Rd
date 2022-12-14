% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stageXStringSet.R
\name{stageObject,XStringSet-method}
\alias{stageObject,XStringSet-method}
\title{Stage a XStringSet}
\usage{
\S4method{stageObject}{XStringSet}(x, dir, path, child = FALSE, ...)
}
\arguments{
\item{x}{A \linkS4class{XStringSet} or any of its subclasses, in particular a \linkS4class{QualityScaledXStringSet}.}

\item{dir}{String containing the path to the staging directory.}

\item{path}{String containing a prefix of the relative path inside \code{dir} where \code{x} is to be saved.
The actual path used to save \code{x} may include additional components, see Details.}

\item{child}{Logical scalar indicating whether \code{x} is a child of a larger object.}

\item{...}{Further arguments to pass to specific methods.}
}
\value{
A list containing metadata for \code{x}.
A subdirectory is created at \code{path} inside \code{dir} and the contents of \code{x} are saved to various files within that subdirectory.
If \code{x} is a QualityScaledXStringSet, a FASTQ file is created instead of a FASTA file.
}
\description{
Stage a XStringSet by saving it to the appropriate file format.
}
\examples{
library(Biostrings)
stuff <- DNAStringSet(c("AAA", "CC", "G", "TTTT"))

tmp <- tempfile()
dir.create(tmp)
stageObject(stuff, tmp, path="dna_thing")
list.files(tmp, recursive=TRUE)

}
\author{
Aaron Lun
}
