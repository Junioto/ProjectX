# Personal Information
name <- "Pongsapak Payakkapant"
email <- "pongsapak.py@email.com"
phone <- "0980859884"
github <- "https://github.com/Junioto"

# Summary
summary <- paste0(
  "Economics graduate transitioning to data analysis. ",
  "Eager to leverage quantitative skills and economic lens to extract insights from data.",
  "Currently learning Python, Excel, and SQL.",
  "Seeking collaboration and learning opportunities to contribute to data-driven projects."
)

# Skills
skills <- c(
  "SQL Databases [Replit]",
  "Dashboard [Power BI, Looker Studio]",
  "Data analysis [Google Sheets, R]",
  "Statistical knowledge [Panel Regression, Regression]",
  "Stata 15"
)

# Co-operative Education
experience <- list(
  list(
    title = "Research Assistant",
    company = "Fiscal Policy Research Institute Foundation",
    dates = "Nov 2022 - Feb 2023",
    description = "Scope of responsibilities :",
    achievements = list(
      "Collect and analyze data on Total Factor Productivity (TFP).",
      "Analyze monthly and quarterly data on the EEC economy.",
      "Create infographics for assigned projects."
    )
  )
)

# Education
education <- list(
  list(
    institution = "Prince of Songkla University",
    degree = "Bachelor Degree in Economics",
    graduation_year = 2023
  )
)

# Certificate
Certificate <- c(
  "Data Science Bootcamp 8 by DataRockie School (2023)",
  "Correlation and Regression for The Curious by DataRockie School (2024)",
  "SQL Crash Course by DataRockie School (2024)",
  "Introduction to Python by PSUMOOC (2024)"
)

# Render the Resume

cat(paste0("\nName:", name))
cat(paste0("\nEmail:", email))
cat(paste0("\nPhone:", phone))
cat(paste0("\nGitHub:", github))

cat("\n\nAbout me:\n")
cat(summary, "\n")

cat("\n\nPortfolio:\n")
for (skill in skills) {
  cat("- ", skill, "\n")
}

cat("\n\nCo-operative Education:\n")
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

cat("\n\nCertificate:\n")
for (Certificate in Certificate) {
  cat("- ", Certificate, "\n")
}

