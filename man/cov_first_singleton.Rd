% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/compute_covs.R
\name{cov_first_singleton}
\alias{cov_first_singleton}
\title{Compute all the singleton matrices corresponding to condition-specific effects in first condition only; used for testing purposes}
\usage{
cov_first_singleton(data)
}
\arguments{
\item{data}{a mash data object, eg as created by \code{mash_set_data}}
}
\value{
an R by R matrix with all 0s except the (1,1) element is 1
}
\description{
Compute all the singleton matrices corresponding to condition-specific effects in first condition only; used for testing purposes
}
