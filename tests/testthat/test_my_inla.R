context("create my_inla object")
describe("my_inla", {
  data(cbpp, package = "lme4")
  meta1 <- 1L
  
  it("fills the object correctly", {
    expect_that(
      my_inla(
        data = cbpp,
        meta1 = meta1
      )@Data,
      is_identical_to(cbpp)
    )
    expect_that(
      my_inla(
        data = cbpp,
        meta1 = meta1
      )@Meta1,
      is_identical_to(meta1)
    )
    expect_that(
      my_inla(
        data = cbpp,
        meta1 = meta1
      )@Status,
      is_identical_to("new")
    )
    expect_that(
      my_inla(
        data = cbpp,
        meta1 = meta1
      )@Weight,
      throws_error('no slot of name "Weight"')
    )
  })
  object <- my_inla(
    data = cbpp,
    meta1 = meta1
  )
  require(INLA)
  model <- inla(incidence ~ period + f(herd, model = "iid"), family = "poisson", data = cbpp)
  it("creates object from the correct class", {
    expect_that(
      object,
      is_a("my_inla")
    )
    expect_that(
      my_inla(data = object, model.fit = model, status = "converged"),
      is_a("my_inla")
    )
  })
  it("fills the object correctly", {
    expect_that(
      my_inla(data = object, model.fit = model, status = "converged")@Model,
      is_identical_to(model)
    )
  })
})
