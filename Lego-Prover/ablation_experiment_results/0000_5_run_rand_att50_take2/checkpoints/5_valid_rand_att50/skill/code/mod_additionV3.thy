lemma mod_addition:
  fixes a b n x y :: nat
  assumes "a mod n = x" and "b mod n = y"
  shows "(a + b) mod n = (x + y) mod n"
proof -
  let ?x = "a mod n"
  let ?y = "b mod n"
  have "a = ?x + (a div n) * n" and "b = ?y + (b div n) * n"
    by auto
  then have "a + b = (?x + ?y) + ((a div n) + (b div n)) * n"
    by (simp add: algebra_simps)
  then have "(a + b) mod n = ((?x + ?y) + ((a div n) + (b div n)) * n) mod n"
    by simp
  also have "... = (?x + ?y) mod n"
    by auto
  also have "... = (x + y) mod n"
    using assms by auto
  finally show ?thesis by auto
qed