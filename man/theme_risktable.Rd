% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/theme_risktable.R
\name{theme_risktable}
\alias{theme_risktable}
\alias{theme_risktable_default}
\alias{theme_risktable_boxed}
\title{Risk Table Themes}
\usage{
theme_risktable_default()

theme_risktable_boxed()
}
\description{
Returns ggplot list of calls defining a theme meant to be applied to a risk table.
}
\examples{
p <- survfit2(Surv(time, status) ~ 1, data = df_lung) \%>\% ggsurvfit()

# default ------------------------------------
p + add_risktable(theme = theme_risktable_default())

# boxed --------------------------------------
p + add_risktable(theme = theme_risktable_boxed())

# none ---------------------------------------
p + add_risktable(theme = NULL)
}
