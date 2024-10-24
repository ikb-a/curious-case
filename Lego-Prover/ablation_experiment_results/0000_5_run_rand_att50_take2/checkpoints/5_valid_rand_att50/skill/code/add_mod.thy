lemma add_mod:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  let ?a' = "a mod m"
  let ?b' = "b mod m"
  have "a = (a div m) * m + ?a'" by auto
  have "b = (b div m) * m + ?b'" by auto
  then have "a + b = ((a div m) + (b div m)) * m + (?a' + ?b')" 
    by (simp add: algebra_simps)
  then have "(a + b) mod m = ((a div m + b div m) * m + (?a' + ?b')) mod m" 
    by simp
  also have "... = (?a' + ?b') mod m" 
    by auto
  finally show ?thesis by simp
qed