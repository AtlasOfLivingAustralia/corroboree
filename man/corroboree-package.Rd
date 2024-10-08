% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/corroboree-package.R
\docType{package}
\name{corroboree-package}
\alias{corroboree}
\alias{corroboree-package}
\title{Build repositories to share biodiversity data}
\description{
\code{{corroboree}} is for data preparation, editing and checking of data to
follow 'Darwin Core standards'; a
global data standard to store, document, and share biodiversity information.
The package provides tools to manipulate data to
conform with, and check validity against, Darwin Core standards.
Using \code{{corroboree}} will allow users to verify that their data can be used to
build 'Darwin Core Archives' using the \code{{galaxias}} package

The package is named for an endangered species of alpine frog.
}
\section{Functions}{


\strong{Suggest where to start}
\itemize{
\item \code{\link[=suggest_workflow]{suggest_workflow()}} for a summary of what column names match Darwin Core terms in your data, and a workflow for adding or editing more.
}

\strong{Add Darwin Core Terms}

The following functions add single DwC fields, or collections of related
fields, to an existing \code{tibble}.
\itemize{
\item \code{\link[=use_coordinates]{use_coordinates()}} for spatial data
\item \code{\link[=use_sf]{use_sf()}} for spatial data in \code{sf} format
\item \code{\link[=use_datetime]{use_datetime()}} for temporal data
\item \code{\link[=use_locality]{use_locality()}} for spatial descriptions
\item \code{\link[=use_occurrences]{use_occurrences()}} basic information on observations (occurrenceID, basisOfrecord, occurrenceStatus, recordID (?))
\item \code{\link[=use_scientificName]{use_scientificName()}} record the highest level of taxonomic specificity in the dataset (scientificName, scientificNameRank, scientificNameAuthorship)
\item \code{\link[=use_taxonomy]{use_taxonomy()}} to specify higher taxonomic columns (kingdom, phylum, class, order, family, genus, species, specificEpithet, vernacularName)
\item \code{\link[=use_abundance]{use_abundance()}} to state how many animals were seen during the observation (individualCount, organismQuantity, organismQuantityType)
\item \code{\link[=use_individual_traits]{use_individual_traits()}} attributes of individuals measured (individualID, lifeStage, sex, vitality, reproductiveCondition)
\item \code{\link[=use_observer]{use_observer()}} to specify who made the observation (recordedByID, recordedBy)
\item \code{\link[=use_collection]{use_collection()}} to give museum- or collection- specific information (datasetID, datasetName, catalogNumber)
\item \code{\link[=use_events]{use_events()}} basic information on observation events (eventID, parentEventID, eventType)
}

Proposed:
\itemize{
\item \code{\link[=use_darwin_core]{use_darwin_core()}} to subset to only fields with DwC names (i.e. same as \code{df |> select(any_of(dwc_fields()))})
\item \code{\link[=use_measurement]{use_measurement()}} for 'Measurement or Fact' data (optional rn)
\item \code{\link[=use_media]{use_media()}} good idea, but unclear how users would supply said media; should be urls, but to where?
}

\strong{Checking data for Darwin Core compliance}

The wrapper function for checking tibbles for Darwin Core compliance is
\code{\link[=check_occurrences]{check_occurrences()}}. It calls the following microfunctions:
\itemize{
\item \code{\link[=check_fields]{check_fields()}} Checks whether non-DwC fields are present
\item \code{\link[=check_occurrenceID]{check_occurrenceID()}}
\item \code{\link[=check_basisOfRecord]{check_basisOfRecord()}}
\item \code{\link[=check_continent]{check_continent()}}
\item \code{\link[=check_country]{check_country()}}
\item \code{\link[=check_countryCode]{check_countryCode()}}
\item \code{\link[=check_decimalLatitude]{check_decimalLatitude()}}
\item \code{\link[=check_decimalLongitude]{check_decimalLongitude()}}
\item ADD MORE
}

Note that there are more \code{check_} functions than \code{use_} functions, because
some \code{use_} functions affect multiple fields.
}

\references{
If you have any questions, comments or suggestions, please email
\href{mailto:support@ala.org.au}{support@ala.org.au}.
}
\author{
\strong{Maintainer}: Martin Westgate \email{martin.westgate@csiro.au}

Authors:
\itemize{
  \item Shandiya Balasubramanium \email{shandiya.balasubramanium@csiro.au}
  \item Dax Kellie \email{dax.kellie@csiro.au}
}

}
\keyword{internal}
