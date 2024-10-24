lemma prime_def_properties:
  shows "prime p \<longleftrightarrow> (p > 1 \<and> (\<forall> d. d dvd p \<longrightarrow> d = 1 \<or> d = p))"
  unfolding prime_def by simp