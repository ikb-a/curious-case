fun vector_add :: "nat list \<Rightarrow> nat list \<Rightarrow> nat list" where
  "vector_add [] ys = ys" |
  "vector_add xs [] = xs" |  (* Allows addition with empty list *)
  "vector_add (x # xs) (y # ys) = (x + y) # vector_add xs ys"
 (* Element-wise addition *)