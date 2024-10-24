lemma square_mod_n:
  fixes k n :: nat
  assumes "k mod n = 0"
  shows "k^2 mod n = 0"
proof -
  have "k = n * (k div n)" using assms by auto
  then have "k^2 = (n * (k div n))^2" by (simp add: power2_eq_square)
  then have "k^2 = n^2 * (k div n)^2" by (simp add: algebra_simps)
  thus "k^2 mod n = 0" by auto
qed