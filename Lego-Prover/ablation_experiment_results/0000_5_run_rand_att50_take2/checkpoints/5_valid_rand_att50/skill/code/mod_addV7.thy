lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof (cases "m = 0")
  case True
  then show ?thesis by (metis mod_by_0)
next
  case False
  then have "m > 0" by simp
  let ?am = "a mod m" and ?bm = "b mod m"
  have "a = ?am + (a div m) * m" by auto
  have "b = ?bm + (b div m) * m" by auto
  then have "a + b = (?am + (a div m) * m) + (?bm + (b div m) * m)"
    by (simp add: algebra_simps)
  then have "a + b = (?am + ?bm) + ((a div m) + (b div m)) * m"
    by (simp add: algebra_simps)
  then have "(a + b) mod m = (?am + ?bm) mod m"
    by auto
  then show ?thesis by (simp add: mod_add_eq)
qed