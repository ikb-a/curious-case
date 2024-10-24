lemma check_prime:
  fixes p :: nat
  assumes "p > 1"
  shows "prime p \<longleftrightarrow> (\<forall>k. k > 1 \<and> k < p \<longrightarrow> p mod k \<noteq> 0)"