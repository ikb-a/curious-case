lemma check_prime:
  fixes n :: nat
  assumes "n > 1"
  shows "prime n \<longleftrightarrow> (\<forall>k. k > 1 \<and> k < n \<longrightarrow> n mod k \<noteq> 0)"