lemma add_mod:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = ?x + (a div m) * m" by auto
  have "b = ?y + (b div m) * m" by auto
  then have "a + b = (?x + (a div m) * m) + (?y + (b div m) * m)" 
    by (simp add: algebra_simps)
  then have "a + b = (?x + ?y) + ((a div m) + (b div m)) * m" 
    by (simp add: algebra_simps)
  hence "(a + b) mod m = (?x + ?y) mod m" 
    by (metis mod_add_eq)
  thus ?thesis 
    by auto
qed