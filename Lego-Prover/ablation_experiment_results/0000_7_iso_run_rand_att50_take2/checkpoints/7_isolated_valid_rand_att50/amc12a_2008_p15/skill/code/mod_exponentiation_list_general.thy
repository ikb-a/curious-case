fun mod_exponentiation_list_general :: "nat list \<Rightarrow> nat \<Rightarrow> nat \<Rightarrow> nat" where
  "mod_exponentiation_list_general [] n b = 1" |
  "mod_exponentiation_list_general (x#xs) n b = 
    ((x^b) mod n * mod_exponentiation_list_general xs n b) mod n"