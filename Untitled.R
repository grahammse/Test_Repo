require(tidyverse)
require(skimr)
require(vtable)

dat <- mtcars
skim(dat)
vtable(dat)


ggplot(dat, aes(mpg, wt)) + 
  geom_point() + 
  geom_smooth(method = "lm") + 
  facet_wrap(~gear)

