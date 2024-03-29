test_that("throws error for season before 2008", {
  expect_error(bart_player_season(2007, stat='box'), 'or later')
  expect_error(bart_player_game(stat='box', 2007), 'or later')
  expect_error(bart_poy(2007), 'valid year')
  expect_error(bart_injuryimpact(year=2007, team='Duke', player='Paolo Banchero'), 'valid year')
})

test_that('throws no stat provided error', {
  expect_error(bart_player_game(load_all=TRUE), 'stat')
})

test_that("throws error for more than one space in name", {
  expect_error(bart_injuryimpact(team='Duke', player='Paolo  Banchero'), 'spacing')
  expect_error(bart_injuryimpact(team='North  Carolina', player='Caleb Love'), 'spacing')
})

test_that("conf code must be exact", {
  expect_error(bart_poy(conf='Acc'), 'valid')
})

test_that("all normal season splits return tibbles", {
  skip_on_cran()
  expect_output(str(bart_player_season(stat='box')), 'toRvik_data')
  expect_output(str(bart_player_season(stat='box')), 'toRvik_data')
  expect_output(str(bart_player_season(stat='shooting')), 'toRvik_data')
  expect_output(str(bart_player_season(stat='advanced')), 'toRvik_data')
})

test_that("transfer returns tibble", {
  skip_on_cran()
  expect_output(str(transfer_portal()), 'toRvik_data')
})
