lemma square_mod_10:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"
proof -
  have "k = 10 * (k div 10)" using assms by auto
  then have "k^2 = (10 * (k div 10))^2" by (simp add: power2_eq_square)
  then have "k^2 = 100 * (k div 10)^2" by (simp add: algebra_simps)
  thus "k^2 mod 10 = 0" by auto
qed