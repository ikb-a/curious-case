lemma square_mod_n:
  fixes k :: nat and n :: nat
  assumes "k mod n = 0"
  shows "k^2 mod (n^2) = 0"
proof -
  have "k^2 mod (n^2) = (k^2) mod (n^2)" by (simp add: power2_eq_square)
  have "k^2 = (n * (k div n))^2" using assms by auto
  also have "... = n^2 * (k div n)^2" by (simp add: power2_eq_square)
  finally have "k^2 mod (n^2) = 0" by auto
  thus ?thesis by (simp add: assms)
qed