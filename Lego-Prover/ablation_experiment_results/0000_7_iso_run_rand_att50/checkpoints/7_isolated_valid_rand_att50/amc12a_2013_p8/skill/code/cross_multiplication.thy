lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0" and "a/b = c/d"
  shows "a * d = b * c"
proof -
  have "a / b = c / d" using assms by simp
  then show ?thesis by (metis assms(1) assms(2) div_0 divide_divide_eq_left' divide_divide_eq_right divide_divide_times_eq divide_eq_0_iff frac_eq_eq mult.commute mult_eq_0_iff mult_zero_right nonzero_divide_eq_eq times_divide_eq_left times_divide_times_eq)
qed