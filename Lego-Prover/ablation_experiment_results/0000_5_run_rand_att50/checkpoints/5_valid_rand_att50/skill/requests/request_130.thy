lemma is_prime_check:
  fixes p :: nat
  assumes "p > 1"
  shows "prime p \<longleftrightarrow> (\<forall>d. d > 1 \<and> d < p \<longrightarrow> p mod d \<noteq> 0)"