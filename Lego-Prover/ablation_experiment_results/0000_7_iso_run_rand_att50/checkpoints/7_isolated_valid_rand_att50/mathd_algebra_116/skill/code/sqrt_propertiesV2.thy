lemma sqrt_properties:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt(x) + sqrt(y) >= sqrt(x + y)"
proof -
  have "sqrt(x) + sqrt(y) = sqrt(x) + sqrt(y) * 1" by simp
  also have "... = sqrt(x) + sqrt(y) * (sqrt(x + y) / sqrt(x + y))" 
    using assms by auto
  also have "... = (sqrt(x) * sqrt(x + y) + sqrt(y) * sqrt(x + y)) / sqrt(x + y)" 
    by (metis \<open>sqrt x + sqrt y * 1 = sqrt x + sqrt y * (sqrt (x + y) / sqrt (x + y))\<close> \<open>sqrt x + sqrt y = sqrt x + sqrt y * 1\<close> add_0_iff add_le_same_cancel1 add_le_same_cancel2 add_nonpos_eq_0_iff assms(1) assms(2) calculation divide_eq_0_iff mult.commute mult_eq_0_iff nonzero_mult_div_cancel_left real_sqrt_eq_zero_cancel_iff ring_class.ring_distribs(2))
  finally have "sqrt(x) + sqrt(y) >= sqrt(x + y) * (sqrt(x) + sqrt(y)) / sqrt(x + y)" 
    using assms by auto
  have "sqrt(x) + sqrt(y) >= sqrt(x + y)" 
    using assms
  proof -
    have "sqrt(x)^2 + sqrt(y)^2 = x + y" by (metis abs_of_nonneg assms(1) assms(2) one_add_one power2_eq_square real_sqrt_mult_self)
    then show ?thesis using assms by (metis sqrt_add_le_add_sqrt)
  qed
  thus ?thesis by auto
qed