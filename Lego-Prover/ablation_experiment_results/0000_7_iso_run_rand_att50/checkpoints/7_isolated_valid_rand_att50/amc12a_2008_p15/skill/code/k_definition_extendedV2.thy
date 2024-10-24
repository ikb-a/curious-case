lemma k_definition_extended:
  fixes k :: nat and d :: nat
  assumes "d > 0" and "k = 2008^2 + 2^2008"
  shows "k mod d \<in> {0..d-1}"
proof -
  have "k = 2008^2 + 2^2008" by (rule assms(2))
  hence "k \<ge> 0" by simp
  have "k mod d < d" by (rule mod_less_divisor[OF assms(1)])
  then show ?thesis by auto
qed