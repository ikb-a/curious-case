lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof -
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = (a div m) * m + ?x" by simp
  have "b = (b div m) * m + ?y" by simp
  then have "a + b = ((a div m) + (b div m)) * m + (?x + ?y)" 
    by (simp add: algebra_simps)
  hence "(a + b) mod m = (?x + ?y) mod m" 
    by (metis mod_add_eq)
  thus ?thesis by simp
qed