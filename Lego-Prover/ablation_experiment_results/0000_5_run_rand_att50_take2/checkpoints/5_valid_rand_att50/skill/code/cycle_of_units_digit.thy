fun cycle_of_units_digit :: "nat \<Rightarrow> nat list" where
  "cycle_of_units_digit b = (if b mod 10 = 0 then [0] else 
    map (\<lambda>k. (b ^ k) mod 10) [0 ..< 20])"