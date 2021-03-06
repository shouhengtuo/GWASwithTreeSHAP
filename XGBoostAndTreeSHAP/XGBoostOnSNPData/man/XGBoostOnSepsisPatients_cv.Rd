% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/XGBoostOnSepsisPatients_cv.R
\name{XGBoostOnSepsisPatients_cv}
\alias{XGBoostOnSepsisPatients_cv}
\title{Use XGBoost to analyze SNP-data in a for sepsis patients vs.using cross-validation.
This function tries to find candidates of effects or interactions associated with a disease}
\usage{
XGBoostOnSepsisPatients_cv(datafile, Kfold, hyperparameters, nrounds,
  early_stopping_rounds)
}
\arguments{
\item{datafile}{is a raw SNP-data file, with indivdual per row, and one column showing
phenotype and the rest of the columns the genotype for spesific SNPs along the genome.}

\item{Kfold}{is the number of folds wanted in cross-validation}

\item{hyperparameters}{is a list containing hyperparameters. See xgboost() package in R.}

\item{nrounds}{is the number of trees to be built during xgboost algorithm}

\item{early_stopping_rounds}{is the number of consecutive trees with no improvment in training error
before the algorithm stops to produce more trees.}
}
\value{
The mean test error after cross validation of xgboost-algorithm on SNP-data.
}
\description{
Use XGBoost to analyze SNP-data in a for sepsis patients vs.using cross-validation.
This function tries to find candidates of effects or interactions associated with a disease
}
\examples{
XGBoostOnSNPdata_cv("~/directory/snpfile.txt",Kfold = 5, hyperparameters = list(eta = 0.3),
nrounds = 100, early_stopping_rounds = 10)
}
