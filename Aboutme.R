# Personal Information
name <- "Pongsapak Payakkapant"
email <- "pongsapak.py@email.com"
phone <- "0980859884"
github <- "https://github.com/Junioto"

# Summary
summary <- paste0(
  "Enthusiastic and detail-oriented junior data analyst with a strong ",
  "foundation in R seeking to leverage analytical skills to contribute ",
  "to meaningful insights and data-driven solutions."
)

# Skills
skills <- c(
  "Data Cleaning & Wrangling (dplyr, tidyr)",
  "Exploratory Data Analysis (ggplot2, plotly)",
  "Statistical Analysis (lm, glmnet, caret)",
  "Data Visualization (ggplot2, plotly)",
  "SQL & Databases (basics)",
  "Basic Machine Learning (linear regression, decision trees)"
)

# Co-operative Education
experience <- list(
  list(
    title = "Researcher Assistant",
    company = "Fiscal Policy Research Institute Foundation",
    dates = "Nov 2022 - Feb 2023",
    responsibilities = list(
      "Collect and analyze data on Total Factor Productivity (TFP).",
      "Analyze monthly and quarterly data on the EEC economy.",
      "Create infographics for assigned projects."
    )
  ),
)

# Education
education <- list(
  list(
    institution = "Prince of Songkla University",
    degree = "Bachelor of Economics",
    graduation_year = 2023
  )
)

# Render the Resume

cat(paste0("\nName:", name))
cat(paste0("\nEmail:", email))
cat(paste0("\nPhone:", phone))
cat(paste0("\nGitHub:", github))

cat("\n\nSummary:\n")
cat(summary, "\n")

cat("\n\nSkills:\n")
for (skill in skills) {
  cat("- ", skill, "\n")
}

cat("\n\nExperience:\n")
for (exp in experience) {
  cat(paste0("\n", exp$title, " - ", exp$company, " (", exp$dates, ")\n"))
  cat(exp$description, "\n")
  for (achievement in exp$achievements) {
    cat("- ", achievement, "\n")
  }
}

cat("\n\nEducation:\n")
for (edu in education) {
  cat(paste0("- ", edu$institution, ", ", edu$degree, " (", edu$graduation_year, ")\n"))
}
