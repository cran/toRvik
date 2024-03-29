% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/bart_injuryimpact.R
\name{bart_injuryimpact}
\alias{bart_injuryimpact}
\title{Get Estimated Injury Impact}
\usage{
bart_injuryimpact(year = current_season(), team = NULL, player = NULL)
}
\arguments{
\item{year}{Defaults to current season (YYYY).}

\item{team}{Indicates team.}

\item{player}{Indicates player to remove.}
}
\value{
Returns a tibble with five columns:
\describe{
  \item{\code{situation}}{character.}
  \item{\code{adj_oe}}{double.}
  \item{\code{adj_de}}{double.}
  \item{\code{barthag}}{double.}
  \item{\code{rk}}{double.}
  }
}
\description{
Returns estimated adjusted ratings in a one-player injury scenario by team.
}
\details{
Estimations are experimental and based on
\href{https://twitter.com/totally_t_bomb/status/973731719479201792}{'highly
dubious analysis.'}
}
\examples{
\donttest{try(bart_injuryimpact(year=2019, team='Duke', player='Zion Williamson'))}

}
