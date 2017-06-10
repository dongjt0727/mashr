// Gao Wang (c) 2017 gaow@uchicago.edu
#include <RcppArmadillo.h>
#include <utils.hpp>

// [[Rcpp::export]]
Rcpp::List calc_lik_rcpp(Rcpp::NumericMatrix b_mat,
                         Rcpp::NumericMatrix s_mat,
                         Rcpp::NumericMatrix v_mat,
                         Rcpp::NumericVector U_3d,
                         bool logd = false)
{
	Rcpp::IntegerVector dimU = U_3d.attr("dim");
	arma::cube U_cube(U_3d.begin(), dimU[0], dimU[1], dimU[2]);
  arma::mat res = calc_lik(Rcpp::as<arma::mat>(b_mat),
                       Rcpp::as<arma::mat>(s_mat),
                       Rcpp::as<arma::mat>(v_mat),
                       U_cube,
                       logd);
	return Rcpp::List::create(Rcpp::Named("data") = res,
                            Rcpp::Named("status") = 0);
}
