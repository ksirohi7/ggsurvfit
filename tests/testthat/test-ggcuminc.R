cuminc1 <- tidycmprsk::cuminc(Surv(ttdeath, death_cr) ~ 1, data = tidycmprsk::trial)
cuminc2 <- tidycmprsk::cuminc(Surv(ttdeath, death_cr) ~ trt, data = tidycmprsk::trial)
cuminc3 <- tidycmprsk::cuminc(Surv(ttdeath, death_cr) ~ trt + grade, data = tidycmprsk::trial)

test_that("ggcuminc() works", {
  expect_error(
    lst_ggcuminc <- list(cuminc1, cuminc2, cuminc3) %>% lapply(ggcuminc),
    NA
  )

  vdiffr::expect_doppelganger("cuminc1-ggcuminc", lst_ggcuminc[[1]])
  vdiffr::expect_doppelganger("cuminc2-ggcuminc", lst_ggcuminc[[2]])
  vdiffr::expect_doppelganger("cuminc3-ggcuminc", lst_ggcuminc[[3]])

  expect_error(ggcuminc(mtcars))
})
