lemma square_mod_d:
  fixes k :: nat and d :: nat
  assumes "d > 0" "k mod d = 0"
  shows "k^2 mod d = 0"
proof -
  have "k = d * (k div d)" using assms(2) by auto
  then have "k^2 = (d * (k div d))^2" by (simp add: power2_eq_square)
  then have "k^2 = d^2 * (k div d)^2" by (simp add: algebra_simps)
  thus "k^2 mod d = 0" by (simp add: mod_mult_self2)
qed