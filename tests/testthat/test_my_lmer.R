context("create my_lmer object")
describe("my_lmer", {
  data(sleepstudy, package = "lme4")
  meta1 <- 1L
  meta2 <- 2L
  meta3 <- 3L
  meta4 <- 4L
  meta5 <- "Meta 5"
  meta6 <- "Meta 6"
  
  it("fills the object correctly", {
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1,
        meta2 = meta2,
        meta3 = meta3,
        meta4 = meta4,
        meta5 = meta5,
        meta6 = meta6
      )@Data,
      is_identical_to(sleepstudy)
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1,
        meta2 = meta2,
        meta3 = meta3,
        meta4 = meta4,
        meta5 = meta5,
        meta6 = meta6
      )@Meta1,
      is_identical_to(meta1)
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1,
        meta2 = meta2,
        meta3 = meta3,
        meta4 = meta4,
        meta5 = meta5,
        meta6 = meta6
      )@Status,
      is_identical_to("new")
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1,
        meta2 = meta2,
        meta3 = meta3,
        meta4 = meta4,
        meta5 = meta5,
        meta6 = meta6
      )@Weight,
      is_identical_to("")
    )
  })
  object <- my_lmer(
    data = sleepstudy,
    meta1 = meta1,
    meta2 = meta2,
    meta3 = meta3,
    meta4 = meta4,
    meta5 = meta5,
    meta6 = meta6
  )
  model <- lme4::lmer(Reaction ~ Days + (Days | Subject), sleepstudy)
  it("creates object from the correct class", {
    expect_that(
      object,
      is_a("my_lmer")
    )
    expect_that(
      my_lmer(data = object, model.fit = model, status = "converged"),
      is_a("my_lmer")
    )
  })
  it("fills the object correctly", {
    expect_that(
      my_lmer(data = object, model.fit = model, status = "converged")@Model,
      is_identical_to(model)
    )
  })
})
