lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a ^ 2 = a" using assms by (simp add: real_sqrt_eq_iff)
  then show "sqrt a >= 0" 
    using `a >= 0` by auto
qed