lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof -
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = m * (a div m) + ?x" by auto
  have "b = m * (b div m) + ?y" by auto
  then show ?thesis
  proof -
    have "a + b = m * (a div m) + ?x + m * (b div m) + ?y" by (simp add: algebra_simps)
    also have "... = m * ((a div m) + (b div m)) + (?x + ?y)" by (simp add: algebra_simps)
    finally have "a + b = m * ((a div m) + (b div m)) + (?x + ?y)" .
    hence "(a + b) mod m = (?x + ?y) mod m" by (metis mod_add_eq)
    thus ?thesis by auto
  qed
qed