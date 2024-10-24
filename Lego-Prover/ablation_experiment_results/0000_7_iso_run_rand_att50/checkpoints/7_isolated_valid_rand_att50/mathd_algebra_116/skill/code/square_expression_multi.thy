fun square_expression_multi :: "real list \<Rightarrow> real" where
  "square_expression_multi [] = 0" |
  "square_expression_multi (x # xs) = x^2 + square_expression_multi xs"