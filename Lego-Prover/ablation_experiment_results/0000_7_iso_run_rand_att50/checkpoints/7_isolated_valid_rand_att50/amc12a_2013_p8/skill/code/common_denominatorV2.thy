lemma common_denominator:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b) - (c / d) = (a * d - b * c) / (b * d)"
proof -
  have "a / b - c / d = a / b - (c * (b / d)) / b" 
    using assms(2) by (metis assms(1) divide_divide_eq_left' mult.right_neutral nonzero_divide_mult_cancel_left times_divide_eq_right)
  also have "... = (a * d - c * b) / (b * d)" 
    using assms(1) by (smt (verit) assms(2) calculation diff_frac_eq)
  finally show ?thesis by auto
qed