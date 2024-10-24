lemma rearrange_equation:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a * x + b = c * x"
  shows "a + b / x = c"
proof -
  have "a * x + b = c * x" using assms(2) by auto
  then show ?thesis 
    by (metis assms(1) add_divide_eq_if_simps(1) nonzero_eq_divide_eq)
qed