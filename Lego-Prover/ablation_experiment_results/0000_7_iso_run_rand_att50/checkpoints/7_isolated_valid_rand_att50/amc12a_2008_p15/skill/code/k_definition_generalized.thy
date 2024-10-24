lemma k_definition_generalized:
  fixes k n :: nat
  assumes "k = n^2 + 2^n"
  shows "k mod 10 = (n^2 + 2^n) mod 10"
proof -
  have "k mod 10 = (n^2 mod 10 + 2^n mod 10) mod 10"
    by (metis assms mod_add_cong mod_mod_trivial power2_eq_square)
  then show ?thesis by presburger
qed