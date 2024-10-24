lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: field_simps)
  then have "b - a = (b - a) * 1" by simp
  moreover have "1 * c > 0" using assms(2) by simp
  ultimately have "(b - a) * c > 0" by (metis \<open>0 < b - a\<close> assms(2) mult.commute mult_pos_pos)
  thus ?thesis using `b - a > 0` by (simp add: field_simps)
qed