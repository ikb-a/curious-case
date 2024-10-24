lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  have "a = (a div m) * m + (a mod m)" by auto
  have "b = (b div m) * m + (b mod m)" by auto
  then have "a + b = (a div m) * m + (b div m) * m + (a mod m) + (b mod m)" 
    by (simp add: algebra_simps)
  then have "(a + b) mod m = ((a div m + b div m) * m + (a mod m + b mod m)) mod m"
    by (simp add: algebra_simps)
  also have "... = (a mod m + b mod m) mod m"
    by (simp add: mod_add_eq)
  finally show ?thesis by simp
qed