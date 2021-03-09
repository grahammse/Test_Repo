require(tidyverse)
require(skimr)
require(vtable)

dat <- mtcars
skim(dat)
vtable(dat)


ggplot(dat, aes(mpg, wt, color = as.factor(am), fill = as.factor(am))) + 
  geom_point() + 
  geom_smooth(method = "lm") + 
  labs(
    color = "American",
    fill = "American ",
    y = "Weight",
    x = "MPG"
  ) + 
  facet_wrap(~gear)

write_csv(dat, "mtcars.csv")


