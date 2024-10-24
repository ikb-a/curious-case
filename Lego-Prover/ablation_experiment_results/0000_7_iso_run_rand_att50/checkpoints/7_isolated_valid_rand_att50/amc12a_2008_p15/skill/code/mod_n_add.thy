lemma mod_n_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = (a mod n + b mod n) mod n"
proof -
  have "a + b = (a mod n + b mod n) + (n * ((a div n) + (b div n)))"
    by (auto simp: field_simps)
  then show ?thesis
    by auto
qed