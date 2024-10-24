lemma minimum_value_of_squares_with_coefficients:
  fixes a b x y :: real
  assumes "a > 0" "b > 0"
  shows "a * x^2 + b * y^2 + (a * b * (x * y))^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  have "(a * b * (x * y))^2 >= 0" by (simp add: power2_eq_square)
  then have "a * x^2 + b * y^2 >= 0" 
    by (metis add.commute add_increasing add_le_same_cancel1 add_nonneg_nonneg assms(1) assms(2) le_add_same_cancel1 le_numeral_extra(3) less_add_same_cancel2 mult_nonneg_nonneg pos2 power2_eq_square realpow_pos_nth_unique zero_le_power2 zero_le_square)
  then have "a * x^2 + b * y^2 + (a * b * (x * y))^2 >= 0 + (a * b * (x * y))^2" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis 
    by (simp add: add_nonneg_nonneg)
qed