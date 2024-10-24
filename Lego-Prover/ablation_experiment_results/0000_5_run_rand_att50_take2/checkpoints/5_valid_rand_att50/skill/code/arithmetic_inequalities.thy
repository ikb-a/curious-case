lemma arithmetic_inequalities:
  fixes a b c :: real
  assumes "a < b" and "b < c"
  shows "a < c"
proof -
  have "c - b > 0" using assms(2) by (simp add: less_diff_eq)
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  then have "b > a" by (simp add: less_diff_eq)
  then have "c > a" using `c - b > 0` by (simp add: add_pos_nonneg)
  thus ?thesis by (simp add: less_diff_eq)
qed