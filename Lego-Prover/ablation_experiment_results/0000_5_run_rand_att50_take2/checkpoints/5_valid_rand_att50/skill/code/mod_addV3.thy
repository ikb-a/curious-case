lemma mod_add:
  fixes a b m :: nat
  shows "(a mod m + b mod m) mod m = (a + b) mod m"
proof -
  let ?a' = "a mod m"
  let ?b' = "b mod m"
  have "a = ?a' + (a div m) * m" by auto
  have "b = ?b' + (b div m) * m" by auto
  then have "a + b = (?a' + (a div m) * m) + (?b' + (b div m) * m)"
    by (simp add: algebra_simps)
  then have "a + b = (?a' + ?b') + ((a div m) + (b div m)) * m" 
    by (simp add: algebra_simps)
  then show ?thesis
    by auto
qed