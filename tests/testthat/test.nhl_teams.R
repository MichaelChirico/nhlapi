context("nhl_teams")

testthat::test_that(
  "nhl_teams retrieves 2 teams", {
    testthat::skip_if_offline(host = "nhl.com")
    testthat::expect_equal(
      nhl_teams(teamIds = 1:2),
      teams_processed
    )
  }
)