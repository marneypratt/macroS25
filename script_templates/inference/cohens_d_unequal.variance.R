#the code below will calculate the Cohen's d effect size when variances are unequal
#you need the rstatix package loaded for this code to work


#standardized effect size for normal data but unequal variance
rstatix::cohens_d(
  data = ___,         #put the dataframe name here
  __ ~ __,            #dependent variable ~ factor
  paired = FALSE,
  var.equal = FALSE,
  hedges.correction = FALSE,
  ci = TRUE,
  conf.level = 0.95,
  ci.type = "bca",
  nboot = 1000)

#With the default settings here
#95% confidence interval is bias-corrected and accelerated
#1000 bootstrap samples taken 