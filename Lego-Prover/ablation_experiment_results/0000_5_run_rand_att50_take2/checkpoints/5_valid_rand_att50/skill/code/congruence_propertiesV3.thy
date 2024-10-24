lemma congruence_properties:
  fixes a b c d :: nat
  assumes "a mod m = b" "c mod m = d"
  shows "(a + c) mod m = (b + d) mod m"
proof -
  let ?x = "a mod m"
  let ?y = "c mod m"
  have "a = ?x + (a div m) * m" and "c = ?y + (c div m) * m"
    by auto
  then have "a + c = (?x + ?y) + ((a div m) + (c div m)) * m"
    by (simp add: algebra_simps)
  then have "(a + c) mod m = ((?x + ?y) + ((a div m) + (c div m)) * m) mod m"
    by simp
  also have "... = (?x + ?y) mod m"
    by auto
  have "?x = b" and "?y = d" using assms by auto
  then show ?thesis
    by (metis mod_add_cong mod_add_eq)
qed