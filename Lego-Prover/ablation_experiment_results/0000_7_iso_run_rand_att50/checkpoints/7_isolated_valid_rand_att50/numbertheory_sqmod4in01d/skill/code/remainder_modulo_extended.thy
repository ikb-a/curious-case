lemma remainder_modulo_extended:
  fixes a d :: int
  assumes "d > 0"
  shows "a mod d \<in> {0..d-1}"
proof -
  have "a mod d < d" by (metis Euclidean_Division.pos_mod_bound assms)
  moreover have "a mod d \<ge> 0" by (metis Euclidean_Division.pos_mod_sign assms)
  ultimately show ?thesis by auto
qed