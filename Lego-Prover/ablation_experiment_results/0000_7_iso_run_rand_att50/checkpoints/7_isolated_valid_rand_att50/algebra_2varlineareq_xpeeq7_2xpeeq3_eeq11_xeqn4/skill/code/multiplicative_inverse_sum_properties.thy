lemma multiplicative_inverse_sum_properties:
  fixes a b :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "(1 / a + 1 / b) = (b + a) / (a * b)"
proof -
  have "1 / a + 1 / b = (b + a) / (a * b)"
    by (smt (verit) add_divide_distrib assms(1) assms(2) nonzero_divide_mult_cancel_left nonzero_divide_mult_cancel_right)
  thus ?thesis by simp
qed