lemma mod_10_add_with_multiple:
  fixes a b c :: nat
  shows "(a + b + c) mod 10 = ((a mod 10 + b mod 10 + c mod 10) mod 10)"
proof -
  have "((a + b) + c) mod 10 = ((a + b) mod 10 + c mod 10) mod 10"
    by (metis mod_add_eq)
  thus ?thesis
    by (metis group_cancel.add1 mod_add_cong mod_add_eq mod_mod_trivial)
qed