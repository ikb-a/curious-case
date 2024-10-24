lemma add_mod:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis 
    by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = (a div m) * m + ?x" by auto
  have "b = (b div m) * m + ?y" by auto
  have "a + b = ((a div m) * m + ?x) + ((b div m) * m + ?y)"
    by (simp add: algebra_simps)
  then have "a + b = (?x + ?y) + ((a div m) + (b div m)) * m"
    by (simp add: algebra_simps)
  thus ?thesis 
    by auto
qed