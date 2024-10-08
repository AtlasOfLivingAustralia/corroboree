% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/use_individual_traits.R
\name{use_individual_traits}
\alias{use_individual_traits}
\title{Add information of individual organisms to a \code{tibble}}
\usage{
use_individual_traits(
  .df,
  individualID = NULL,
  lifeStage = NULL,
  sex = NULL,
  vitality = NULL,
  reproductiveCondition = NULL,
  .keep = "unused"
)
}
\arguments{
\item{individualID}{An identifier for an individual or named group of
individual organisms represented in the Occurrence. Meant to accommodate
resampling of the same individual or group for monitoring purposes. May
be a global unique identifier or an identifier specific to a data set.}

\item{lifeStage}{The age class or life stage of an organism at the time of
occurrence.}

\item{sex}{The sex of the biological individual.}

\item{vitality}{An indication of whether an organism was alive or dead at
the time of collection or observation.}

\item{reproductiveCondition}{The reproductive condition of the biological
individual.}

\item{.keep}{Control which columns from .data are retained in the output.
Note that unlike \code{dplyr::mutate}, which defaults to \code{"all"} this defaults to
\code{"unused"}; i.e. only keeps Darwin Core fields, and not those fields used to
generate them.}

\item{df}{a \code{data.frame} or \code{tibble} that the column should be appended to.}
}
\value{
A tibble with the requested fields added.
}
\description{
Format fields that contain measurements or attributes of individual
organisms to a \code{tibble}. Fields include those that specify sex, life stage
or condition. Individuals can be identified by an \code{individualID} if data
contains resampling.

In practice this is no different from using \code{mutate()}, but gives some
informative errors, and serves as a useful lookup for fields in
the Darwin Core Standard.
}
\details{
Examples of \code{lifeStage} values:
\itemize{
\item \code{zygote}
\item \code{larva}
\item \code{adult}
\item \code{seedling}
\item \code{flowering}
}

Examples of \code{vitality} values:
\itemize{
\item \code{alive}
\item \code{dead}
\item \code{uncertain}
}

Examples of \code{reproductiveCondition} values:
\itemize{
\item \code{non-reproductive}
\item \code{pregnant}
\item \verb{in bloom}
\item \verb{fruit bearing}
}
}
\seealso{
\code{\link[=use_scientific_name]{use_scientific_name()}} for adding \code{scientificName} and authorship information.
}
