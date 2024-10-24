fun dot_product :: "real list \<Rightarrow> real list \<Rightarrow> real" where
"dot_product [] [] = 0" |
"dot_product (h1#t1) (h2#t2) = h1 * h2 + dot_product t1 t2"