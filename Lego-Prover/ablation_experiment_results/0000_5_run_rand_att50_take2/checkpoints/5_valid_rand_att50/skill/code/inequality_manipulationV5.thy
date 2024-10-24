lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  have "c * (b - a) > 0" using `b - a > 0` assms(2) by (simp add: mult_pos_pos)
  have "b * c - a * c = c * (b - a)" using algebra_simps by (auto simp: field_simps)
  then have "b * c > a * c" using `c * (b - a) > 0` by simp
  thus ?thesis by simp
qed