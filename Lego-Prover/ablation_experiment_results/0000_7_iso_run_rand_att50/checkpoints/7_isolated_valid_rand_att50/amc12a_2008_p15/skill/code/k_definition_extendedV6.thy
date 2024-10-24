lemma k_definition_extended:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
    by (smt (verit) assms mod_add_eq)
  thus ?thesis by blast
qed