% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/clean_table.R
\name{clean_table}
\alias{clean_table}
\title{Remove columns filled only with NA (missing value)}
\usage{
clean_table(df)
}
\arguments{
\item{df}{the dataframe to be cleaned}
}
\value{
a dataframe without columns containing only NA
}
\description{
Remove columns filled only with NA (missing value)
}
\examples{
\donttest{
library(tidyverse)

idbank_empl =
 get_idbank_list("EMPLOI-SALARIE-TRIM-NATIONAL") \%>\% #employment
 mutate(title = get_insee_title(idbank)) \%>\%
 separate(title, sep = " - ", into = paste0("title", 1:5), fill = "right") \%>\%
 clean_table()
}
}
