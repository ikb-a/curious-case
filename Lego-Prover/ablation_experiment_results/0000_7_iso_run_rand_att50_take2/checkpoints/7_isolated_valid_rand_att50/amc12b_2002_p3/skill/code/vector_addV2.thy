fun vector_add :: "nat list \<Rightarrow> nat list \<Rightarrow> nat list" where
  "vector_add [] ys = ys" |
  "vector_add xs [] = xs" |  (* Handle the case where the second list is empty *)
  "vector_add (x # xs) (y # ys) = (x + y) # vector_add xs ys"