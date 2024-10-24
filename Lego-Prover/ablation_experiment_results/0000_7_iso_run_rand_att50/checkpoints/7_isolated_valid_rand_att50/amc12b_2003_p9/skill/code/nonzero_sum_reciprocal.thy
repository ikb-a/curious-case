lemma nonzero_sum_reciprocal:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1 / a + 1 / b = (a + b) / (a * b)"
proof -
  have "1 / a + 1 / b = b/(a*b) + a/(a*b)" by (metis assms(1) assms(2) nonzero_divide_mult_cancel_left nonzero_divide_mult_cancel_right)
  also have "... = (a + b) / (a * b)" by (simp add: field_simps)
  finally show ?thesis by simp
qed