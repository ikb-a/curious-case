lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  then have "c * (b - a) > 0" using assms(2) by (simp add: mult_pos_pos)
  then show ?thesis using `b - a > 0` by sos
qed