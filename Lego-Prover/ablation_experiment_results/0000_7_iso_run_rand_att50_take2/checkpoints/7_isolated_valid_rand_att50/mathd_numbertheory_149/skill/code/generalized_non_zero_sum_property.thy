lemma generalized_non_zero_sum_property:
  fixes a b c d :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0" "d \<noteq> 0"
  shows "a * (1 / a) + b * (1 / b) + c * (1 / c) + d * (1 / d) = 4"
proof -
  have "a * (1 / a) = 1" using assms(1) by simp
  hence "b * (1 / b) = 1" using assms(2) by simp
  hence "c * (1 / c) = 1" using assms(3) by simp
  hence "d * (1 / d) = 1" using assms(4) by simp
  thus ?thesis by (metis \<open>a * (1 / a) = 1\<close> \<open>b * (1 / b) = 1\<close> \<open>c * (1 / c) = 1\<close> add.commute add_divide_distrib div_by_1 group_cancel.add2 is_num_normalize(1) mult_cancel_right1 nonzero_eq_divide_eq numeral_Bit0 one_add_one zero_neq_one)
qed