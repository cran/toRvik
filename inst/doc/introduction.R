## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include=FALSE-----------------------------------------------------
library(toRvik)
library(dplyr)
library(readr)
library(tictoc)
library(utils)

## ----install, message=FALSE,eval=FALSE----------------------------------------
#  # You can install using {pacman} with the following code:
#  if (!requireNamespace('pacman', quietly = TRUE)){
#    install.packages('pacman')
#  }
#  pacman::p_load_current_gh("andreweatherman/toRvik", dependencies = TRUE, update = TRUE)

## ----trank, warning=FALSE-----------------------------------------------------
tictoc::tic()
toRvik::bart_ratings(year=2022) %>% 
  utils::head(10)
tictoc::toc()

## ----factors, warning=FALSE---------------------------------------------------
tictoc::tic()
toRvik::bart_factors(venue='home') %>%
  utils::head(10)
tictoc::toc()

## ----archive, wanring=FALSE---------------------------------------------------
tictoc::tic()
toRvik::bart_archive('20220113') %>%
  utils::head(10)
tictoc::toc()

## ----player_game, warning=FALSE-----------------------------------------------
tictoc::tic()
toRvik::bart_player_game(year=2022, stat='adv') %>%
  dplyr::filter(team=='Duke') %>%
  dplyr::arrange(desc(net)) %>%
  utils::head(10)
tictoc::toc()

## ----player season, warning=FALSE---------------------------------------------
tictoc::tic()
toRvik::bart_player_season(year=2022, stat='shooting') %>%
  dplyr::filter(team=='Duke') %>%
  dplyr::arrange(desc(mid_a)) %>%
  utils::head(5)
tictoc::toc()

## ----sheets, warning=FALSE----------------------------------------------------
tictoc::tic()
toRvik::bart_tourney_sheets(year=2022) %>%
  utils::head(10)
tictoc::toc()

## ----t_odds, warning=FALSE----------------------------------------------------
tictoc::tic()
toRvik::bart_tourney_odds(year=2022, odds='pre') %>%
  dplyr::arrange(desc(s16)) %>%
  utils::head(10)
tictoc::toc()

## ----t_res, warning=FALSE-----------------------------------------------------
tictoc::tic()
toRvik::bart_tourney_results(min_year=2011, max_year=2021, type='conf') %>%
  utils::head(5)
tictoc::toc()

