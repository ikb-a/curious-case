definition prime :: "nat \<Rightarrow> bool" where
  "prime p \<longleftrightarrow> p > 1 \<and> (\<forall> d. d dvd p \<longrightarrow> d = 1 \<or> d = p)"