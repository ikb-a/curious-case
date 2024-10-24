fun square_expansion_multi :: "real list \<Rightarrow> real" where
  "square_expansion_multi [] = 0" |
  "square_expansion_multi [x] = x^2" |
  "square_expansion_multi (x # xs) = x^2 + square_expansion_multi xs"