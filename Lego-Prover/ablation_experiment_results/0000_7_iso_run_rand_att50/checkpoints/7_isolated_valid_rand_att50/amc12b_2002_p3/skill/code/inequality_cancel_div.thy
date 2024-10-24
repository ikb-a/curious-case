lemma inequality_cancel_div:
  fixes x a b c d :: real
  assumes "x > 0" "a < c - b / x" "d = a" "e = b"
  shows "d * x < c * x - e"
proof -
  have "x * (a + b / x) < c * x" using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_left order_less_le_subst2 verit_comp_simplify1(3))
  then have "x * a + b < c * x" by sos
  then have "d * x + e < c * x" using assms(3) assms(4) by sos
  then show ?thesis by simp
qed