lemma mod_d_remainder:
  fixes n d :: nat
  assumes "d > 0"
  shows "n mod d \<in> {0..d-1}"
proof -
  have "n mod d < d" by (rule mod_less_divisor[OF assms(1)])
  moreover have "n mod d \<ge> 0" by simp
  ultimately show ?thesis by auto
qed