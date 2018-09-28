library(shiny)
shinyUI(fluidPage(
  sidebarLayout(position = "right",
    sidebarPanel(
      radioButtons(inputId = "conf", label = "Confidence level", c("90%" = "1.65", "95%" = "1.96", "99% "= "2.58"), "1.65"),
      # numericInput("z","z: confidence level", 1.96),
      numericInput("r","r - outcome rate", 0.4),
      numericInput("f","f - design effect", 1.5),
      helpText("assumed around 2.0"),
      numericInput("k","k - non-response rate", 0.1),
      numericInput("p","p - proportion of target population to the total population", 0.038),
      numericInput("n","n - average household size", 6.2),
      numericInput("e","e - margin of error", 0.12),
      p("Please", a(href = "mailto:fyousufzai93@gmail.com", "contact"), "me if you see any error in this app."),
      p("To replicate this app, you have the codes from my", a(href = "https://github.com/Fahim-Ahmad", "GitHub"), "account")
    ),
    mainPanel(
      h2("Sample size calculation for household surveys"),
      "Required sample size is:", verbatimTextOutput("sum"),
      h5("The sample size is calculated in terms of the number of households that must be selected, and the formula is based on the United Nations Survey Design Handbook."),
      br(),
      img(src='myImage.png', align = "center"),
      br(),
      h5(em("nh - the sample size in terms of number of households to be selected;")),
      h5(em("z - the statistic that defines the level of confidence desired;")),
      h5(em("r - an estimate of a key indicator to be measured by the survey;")),
      h5(em("f - the sample design effect. Assumed to be 2.0 (default value);")),
      h5(em("k - a multiplier to account for the anticipated rate of non-response;")),
      h5(em("p - the proportion of the total population accounted for by the target population and upon which the parameter, r, is based;")),
      h5(em("n - the average household size (number of persons per household);")),
      h5(em("e - the margin of error to be attained.")),
      br(),
      checkboxInput("description", "More details"),
      p("
        The z-statistic should be 1.65 for 90% level of confidence level, 1.96 for the 95% level of confidence, and 2.58% for 99% level of confidence. The default value of", em("f,") , "the sample design effect, should be set at 2.0 unless there is supporting empirical data from previous or related surveys that suggest a different value.
The non-response multiplier,", em("k,") , "should be chosen to reflect the country's own experience with non- response - typically under 10 percent in developing countries.
The parameters,", em("p,"),  "and", em("n,"), "can be taken from the most recent census. For the margin of error,", em("e,"), "it is recommended to set the level of precision at 10 percent of", em("r"), "; thus", em("e =
0.10r.")
        )
      )
  )
)
)


