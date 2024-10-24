lemma arithmetic_inequalities:
  fixes a b c :: real
  assumes "a < b" and "b < c"
  shows "a < c"
proof -
  have "c - b > 0" using assms(2) by (simp add: less_diff_eq)
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  then have "c - a = (c - b) + (b - a)" by (simp add: field_simps)
  then have "c - a > 0" using `c - b > 0` and `b - a > 0` by (simp add: add_pos_pos)
  thus ?thesis using `c - a > 0` by (simp add: less_diff_eq)
qed