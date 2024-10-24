lemma non_zero_sum_property:
  fixes a b :: real
  assumes "a + b \<noteq> 0" "a \<noteq> 0" "b \<noteq> 0"
  shows "1 / a + 1 / b = (a + b) / (a * b)"
proof -
  have "1 / a + 1 / b = b / (a * b) + a / (a * b)" by (metis assms(2) assms(3) nonzero_divide_mult_cancel_left nonzero_divide_mult_cancel_right)
  also have "... = (a + b) / (a * b)" by (auto simp: field_simps)
  finally show ?thesis by simp
qed