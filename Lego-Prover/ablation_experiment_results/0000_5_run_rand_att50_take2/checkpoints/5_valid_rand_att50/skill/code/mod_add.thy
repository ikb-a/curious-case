lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  have "a = (a mod m) + (a div m) * m" by auto
  have "b = (b mod m) + (b div m) * m" by auto
  then have "a + b = (a mod m + b mod m) + ((a div m) + (b div m)) * m" 
    by (simp add: algebra_simps)
  then show ?thesis 
    by auto
qed