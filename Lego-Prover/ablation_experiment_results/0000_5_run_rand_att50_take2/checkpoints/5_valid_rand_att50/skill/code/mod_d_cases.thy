lemma mod_d_cases:
  fixes a :: int and d :: nat
  assumes "d > 0"
  shows "a mod d \<in> {0..d-1}"
proof -
  have "a mod d < d" using assms by auto
  moreover have "a mod d \<ge> 0" by (metis Euclidean_Division.pos_mod_sign assms of_nat_0_less_iff)
  ultimately show ?thesis by auto
qed