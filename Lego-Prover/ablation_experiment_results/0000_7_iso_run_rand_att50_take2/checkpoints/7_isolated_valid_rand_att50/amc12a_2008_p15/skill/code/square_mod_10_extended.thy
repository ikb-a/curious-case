lemma square_mod_10_extended:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 100 = 0"
proof -
  have "k^2 mod 100 = (k^2) mod (10^2)" by (simp add: power2_eq_square)
  have "k^2 = (10 * (k div 10))^2" using assms by auto
  also have "... = 100 * (k div 10)^2" by (simp add: power2_eq_square)
  finally have "k^2 mod 100 = 0" by auto
  thus ?thesis by (simp add: assms)
qed