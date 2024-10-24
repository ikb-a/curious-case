lemma mod_n_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = (a mod n + b mod n) mod n"
proof -
  have "a + b = (a mod n) + (b mod n) + n * (a div n + b div n)"
    by (auto simp: field_simps)
  then have "(a + b) mod n = ((a mod n) + (b mod n) + n * (a div n + b div n)) mod n"
    by (simp add: assms)
  then show ?thesis using mod_add_eq by auto
qed