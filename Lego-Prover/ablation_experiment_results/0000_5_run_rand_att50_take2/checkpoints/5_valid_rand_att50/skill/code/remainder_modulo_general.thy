lemma remainder_modulo_general:
  fixes a d :: int
  assumes "d > 0"
  shows "a mod d \<in> {0..d-1}"
proof -
  have "a mod d < d" by (metis Euclidean_Division.pos_mod_bound assms)
  moreover have "a mod d \<ge> 0" 
    using assms by auto
  ultimately show ?thesis by auto
qed