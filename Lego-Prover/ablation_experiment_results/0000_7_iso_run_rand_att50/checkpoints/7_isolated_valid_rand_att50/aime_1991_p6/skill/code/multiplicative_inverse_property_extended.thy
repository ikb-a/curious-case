lemma multiplicative_inverse_property_extended:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b = 1 / a"
  shows "a * b = 1"
  and "b = 1 / a \<Longrightarrow> a * b = 1"
  and "b = 1 / a \<Longrightarrow> a * (b * c) = c"
  and "b = 1 / a \<Longrightarrow> (a * b) * c = c"
proof -
  have "a * b = a * (1 / a)" using assms(2) by simp
  thus "a * b = 1" using assms(1) by auto
next
  show "b = 1 / a \<Longrightarrow> a * b = 1" using assms(2) by (metis assms(1) divide_self frac_eq_eq nonzero_divide_eq_eq zero_eq_1_divide_iff)
next
  show "b = 1 / a \<Longrightarrow> a * (b * c) = c" 
    using assms(2) by (metis assms(1) div_by_1 divide_divide_eq_left frac_eq_eq mult.commute mult.right_neutral mult_cancel_right1 mult_eq_0_iff nonzero_divide_eq_eq nonzero_divide_mult_cancel_right zero_neq_one)
next
  show "b = 1 / a \<Longrightarrow> (a * b) * c = c" 
    using assms(2) by (metis assms(1) comm_monoid_mult_class.mult_1 div_by_1 frac_eq_eq mult.commute mult.right_neutral mult_cancel_right2 nonzero_divide_eq_eq nonzero_mult_div_cancel_right zero_eq_1_divide_iff zero_neq_one)
qed