lemma mod_add:
  fixes a b c d :: nat
  assumes "a mod b = c" "d mod b = e"
  shows "(a + d) mod b = (c + e) mod b"
proof -
  obtain k1 where "a = c + k1 * b" using assms(1) by (metis mod_mult_div_eq mult.commute)
  obtain k2 where "d = e + k2 * b" using assms(2) by (metis mod_eq_nat1E mod_less_eq_dividend mod_mod_trivial mult.commute)
  have "a + d = (c + k1 * b) + (e + k2 * b)"
    by (simp add: `a = c + k1 * b` `d = e + k2 * b`)
  then have "a + d = (c + e) + (k1 + k2) * b"
    by (simp add: algebra_simps)
  then have "(a + d) mod b = ((c + e) + (k1 + k2) * b) mod b"
    by simp
  also have "... = (c + e) mod b"
    by (simp add: mod_add_eq)
  finally show ?thesis by simp
qed