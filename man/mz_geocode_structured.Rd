% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/geocode.R
\name{mz_geocode_structured}
\alias{mz_geocode_structured}
\title{Geocode a structured address}
\usage{
mz_geocode_structured(
  address = NULL,
  neighbourhood = NULL,
  borough = NULL,
  locality = NULL,
  county = NULL,
  region = NULL,
  postalcode = NULL,
  country = NULL,
  ...
)
}
\arguments{
\item{address}{Can be a numbered street address or just the name of the street}

\item{neighbourhood}{Neighborhood name (eg "Notting Hill" in London)}

\item{borough}{eg "Manhattan"}

\item{locality}{The city (eg "Oakland")}

\item{county}{The county}

\item{region}{States in the case of US/Canada, or state-like
administrative division in other countries}

\item{postalcode}{AKA the zip code. Can not be used alone, must have at least
one other argument}

\item{country}{The country - Can be the full name or the abbreviation from
\code{\link{mz_countries}}}

\item{...}{Arguments passed on to \code{\link{mz_structured_search}}}
}
\value{
A tibble, with the parsed address used to retrieve the geocode, lat/lon,
and the confidence (between 0 and 1)
}
\description{
\code{\link{mz_geocode}} allows you to search using an unstructured string of
text, but if your address data has more structure (eg separate columns for
address, city, state, zip), then using the structured search service may
provide more precision. For more information, see
\url{https://github.com/pelias/documentation/}. Note that
all of the arguments are optional, but at least one of them must be non-NULL.
Furthermore, \code{postalcode} can not be used by itself.
}
\seealso{
\code{\link{mz_geocode}}, \code{\link{mz_structured_search}}
}
