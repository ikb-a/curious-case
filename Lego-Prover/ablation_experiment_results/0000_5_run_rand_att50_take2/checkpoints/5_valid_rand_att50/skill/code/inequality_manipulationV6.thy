lemma inequality_manipulation:
  fixes a b c :: real
  assumes "a < b" "c > 0"
  shows "a * c < b * c"
proof -
  have "b - a > 0" using assms(1) by (simp add: less_diff_eq)
  then have "c * (b - a) > 0" using assms(2) by (simp add: mult_pos_pos)
  have "a * c < a * c + (b - a) * c" 
    by (metis assms(1) assms(2) comm_semiring_class.distrib le_add_diff_inverse less_eq_real_def mult.commute mult_less_cancel_right_disj)
  then show ?thesis using `c * (b - a) > 0` by (simp add: field_simps)
qed