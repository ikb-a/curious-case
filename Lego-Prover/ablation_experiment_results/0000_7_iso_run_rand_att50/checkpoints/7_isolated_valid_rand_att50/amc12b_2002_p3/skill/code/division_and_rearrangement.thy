lemma division_and_rearrangement:
  fixes x a b c :: real
  assumes "x > 0" "c = a + b / x"
  shows "b = x * (c - a)"
proof -
  have "c - a = b / x" using assms by (simp add: assms(2) algebra_simps)
  then show ?thesis by (metis assms(1) divide_eq_0_iff eq_iff_diff_eq_0 frac_eq_eq less_numeral_extra(3) mult.commute mult_eq_0_iff nonzero_eq_divide_eq)
qed