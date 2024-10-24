lemma product_of_inverses:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "1 / (a * b) = (1 / a) * (1 / b)"
proof -
  have "1 / (a * b) = (1 / a) * (1 / b) \<longleftrightarrow> (1 / (a * b)) * (a * b) = 1"
    by (metis assms(1) assms(2) divide_divide_eq_left' divide_eq_eq divide_eq_imp mult.right_neutral nonzero_divide_eq_eq nonzero_mult_divide_mult_cancel_left times_divide_eq_left times_divide_eq_right)
  also have "... \<longleftrightarrow> 1 = (1 / a) * (1 / b) * (a * b)"
    by (simp add: assms)
  finally show ?thesis by simp
qed