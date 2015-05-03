context("create my_lmer object")
describe("my_lmer", {
  data(sleepstudy, package = "lme4")
  meta1 <- 1L
  
  it("fills the object correctly", {
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1
      )@Data,
      is_identical_to(sleepstudy)
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1
      )@Meta1,
      is_identical_to(meta1)
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1
      )@Status,
      is_identical_to("new")
    )
    expect_that(
      my_lmer(
        data = sleepstudy,
        meta1 = meta1
      )@Weight,
      is_identical_to("")
    )
  })
  object <- my_lmer(
    data = sleepstudy,
    meta1 = meta1
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
