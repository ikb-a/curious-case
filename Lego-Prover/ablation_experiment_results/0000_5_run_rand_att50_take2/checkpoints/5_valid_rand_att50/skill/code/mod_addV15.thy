lemma mod_add:
  fixes a b n :: nat
  assumes "n > 0"
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  let ?x = "a mod n"
  let ?y = "b mod n"
  have "a = (a div n) * n + ?x" by auto
  have "b = (b div n) * n + ?y" by auto
  then have "a + b = (a div n) * n + (b div n) * n + ?x + ?y" 
    by (simp add: algebra_simps)
  let ?k = "(a div n) + (b div n)"
  have "a + b = ?k * n + (?x + ?y)" by (simp add: algebra_simps)
  then show ?thesis 
    by auto
qed