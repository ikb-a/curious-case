lemma mod_addition:
  fixes a b m :: nat
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  hence "a mod m < m" and "b mod m < m" by auto
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = ?x + (a div m) * m" by auto
  have "b = ?y + (b div m) * m" by auto
  have "a + b = (?x + ?y) + ((a div m) + (b div m)) * m" 
    by (simp add: algebra_simps)
  then have "(a + b) mod m = ((?x + ?y) + ((a div m) + (b div m)) * m) mod m" 
    by (simp add: algebra_simps)
  also have "... = (?x + ?y) mod m" 
    by (simp add: mod_mult_eq)
  also have "... = ((a mod m) + (b mod m)) mod m" 
    by (simp add: algebra_simps)
  finally show ?thesis by presburger
qed