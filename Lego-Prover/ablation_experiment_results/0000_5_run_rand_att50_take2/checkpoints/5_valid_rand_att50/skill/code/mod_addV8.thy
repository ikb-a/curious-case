lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  hence "a mod m < m" and "b mod m < m" by auto
  let ?x = "a mod m"
  let ?y = "b mod m"
  have "a = ?x + (a div m) * m" and "b = ?y + (b div m) * m"
    by auto
  have "a + b = (?x + ?y) + ((a div m) + (b div m)) * m" 
    by (simp add: algebra_simps)
  then have "(a + b) mod m = ((?x + ?y) + ((a div m) + (b div m)) * m) mod m"
    by simp
  also have "... = (?x + ?y) mod m"
    by auto
  finally show ?thesis
    by auto
qed