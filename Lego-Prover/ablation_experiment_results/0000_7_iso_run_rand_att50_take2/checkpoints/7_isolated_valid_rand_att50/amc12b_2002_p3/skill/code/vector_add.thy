fun vector_add :: "nat list \<Rightarrow> nat list \<Rightarrow> nat list" where
  "vector_add [] ys = ys" |
  "vector_add (x # xs) ys = (x + hd ys) # vector_add xs (tl ys)"