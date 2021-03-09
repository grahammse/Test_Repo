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
    color = "American Manufacturer",
    fill = "American Manufacturer",
    y = "Weight",
    x = "Miles Per Gallon"
  ) + 
  facet_wrap(~gear)

write_csv(dat, "mtcars.csv")


