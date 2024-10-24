lemma mod_n_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = (a mod n + b mod n) mod n"
proof -
  have "(a + b) mod n = (if a + b < n then a + b else (a mod n + b mod n) mod n)"
    by (metis mod_add_eq mod_less)
  thus ?thesis
    using assms by auto
qed