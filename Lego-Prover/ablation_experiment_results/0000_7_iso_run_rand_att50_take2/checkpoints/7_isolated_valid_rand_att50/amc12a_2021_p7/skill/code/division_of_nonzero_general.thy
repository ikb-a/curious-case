lemma division_of_nonzero_general:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c > 0"
  shows "(a * b) / a = b" and "(a * b) / b = a" and "(a * b) / (c * a) = (b / c)" and "(a * b) / (c * b) = (a / c)"
proof -
  have "(a * b) / a = b" using assms by (simp add: field_simps)
  thus "(a * b) / a = b" by simp
next
  have "(a * b) / b = a" using assms by (simp add: field_simps)
  thus "(a * b) / b = a" by simp
next
  have "(a * b) / (c * a) = (b * a) / (c * a)" using assms by simp
  also have "... = (b / c)" by (metis assms(1) mult.commute nonzero_mult_divide_mult_cancel_left)
  finally show "(a * b) / (c * a) = (b / c)" by simp
next
  have "(a * b) / (c * b) = (a * b) / (c * b)" using assms by simp
  also have "... = (a / c)" by (metis assms(2) mult.commute nonzero_mult_divide_mult_cancel_right2)
  finally show "(a * b) / (c * b) = (a / c)" by (metis \<open>a * b / (c * b) = a / c\<close>)
qed