lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  then have "c * (b - a) > 0" using assms(2) by (simp add: mult_pos_pos)
  have "a * c < a * c + c * (b - a)" using assms(1) by (metis \<open>0 < c * (b - a)\<close> less_add_same_cancel1)
  then have "a * c < b * c" by (simp add: field_simps)
  thus ?thesis by simp
qed