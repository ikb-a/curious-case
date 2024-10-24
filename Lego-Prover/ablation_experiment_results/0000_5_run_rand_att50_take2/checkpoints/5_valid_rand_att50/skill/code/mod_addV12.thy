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
  hence "(a + b) mod n = (?x + ?y) mod n" 
    by (metis assms mod_add_eq)
  thus ?thesis by simp
qed