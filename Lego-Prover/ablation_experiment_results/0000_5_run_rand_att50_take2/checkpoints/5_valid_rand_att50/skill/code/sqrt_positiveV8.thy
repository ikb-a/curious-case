lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x ^ 2 = x" using assms by (simp add: real_sqrt_eq_iff)
  then show "sqrt x >= 0" 
    using `x >= 0` by auto
qed