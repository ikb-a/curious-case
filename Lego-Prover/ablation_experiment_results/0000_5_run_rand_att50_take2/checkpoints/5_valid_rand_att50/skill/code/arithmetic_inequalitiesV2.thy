lemma arithmetic_inequalities:
  fixes a b c :: real
  assumes "a < b" and "b < c"
  shows "a < c"
proof -
  from assms(1) have "b - a > 0" using less_diff_eq by simp
  from assms(2) have "c - b > 0" using less_diff_eq by simp
  then have "c - a = (c - b) + (b - a)" by (simp add: algebra_simps)
  then show ?thesis using `b - a > 0` `c - b > 0` by auto
qed