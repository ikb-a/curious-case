lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  have "c > 0" using assms(2) by assumption
  have "(b - a) * c > 0" using `b - a > 0` `c > 0` by (simp add: mult_pos_pos)
  then have "b * c - a * c > 0" by (simp add: field_simps)
  thus ?thesis by (simp add: field_simps)
qed