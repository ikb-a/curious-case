lemma k_mod_10_extended:
  fixes k :: nat
  assumes "k = n^2 + 2^n"  
  shows "k mod 10 = (n^2 mod 10 + (2^n mod 10)) mod 10"
proof -
  have "k mod 10 = (n^2 + 2^n) mod 10" by (simp add: assms)
  also have "... = (n^2 mod 10 + 2^n mod 10) mod 10" by presburger
  finally show ?thesis.
qed