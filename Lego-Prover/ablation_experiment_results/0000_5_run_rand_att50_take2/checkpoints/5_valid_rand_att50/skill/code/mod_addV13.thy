lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  let ?x = "a mod n"
  let ?y = "b mod n"
  have "a = (a div n) * n + ?x" by auto
  have "b = (b div n) * n + ?y" by auto
  then have "a + b = ((a div n) + (b div n)) * n + (?x + ?y)" 
    by (simp add: algebra_simps)
  have "(a + b) mod n = (((a div n) + (b div n)) * n + (?x + ?y)) mod n"
    by (auto simp: field_simps)
  also have "... = (?x + ?y) mod n"
    by auto
  finally show ?thesis by simp
qed