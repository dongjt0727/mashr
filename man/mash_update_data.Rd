% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/set_data.R
\name{mash_update_data}
\alias{mash_update_data}
\title{Update the data object for mash analysis.}
\usage{
mash_update_data(mashdata, ref = NULL, V = NULL)
}
\arguments{
\item{mashdata}{mash data object containing the Bhat matrix, standard errors, V; created using \code{mash_set_data}}

\item{ref}{the reference group. It could be a number between 1,..., R, R is number of conditions, or the name of reference group. If there is no reference group, it can be the string 'mean'.}

\item{V}{a correlation matrix for the null effects}
}
\value{
a updated mash data object
}
\description{
Update the data object for mash analysis.
}
