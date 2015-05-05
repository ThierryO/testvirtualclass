library(testvirtualclass)
data(cbpp, package = "lme4")
meta1 <- 1L
meta2 <- 2L
meta3 <- 3L
meta4 <- 4L
meta5 <- "Meta 5"
meta6 <- "Meta 6"
Rprof("lmer.out")
test <- my_lmer(
  data = cbpp,
  meta1 = meta1,
  meta2 = meta2,
  meta3 = meta3,
  meta4 = meta4,
  meta5 = meta5,
  meta6 = meta6
)
Rprof(NULL)
summaryRprof("lmer.out")
