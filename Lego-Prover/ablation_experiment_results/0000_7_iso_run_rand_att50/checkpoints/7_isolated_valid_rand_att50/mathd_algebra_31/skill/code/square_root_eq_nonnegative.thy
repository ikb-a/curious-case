lemma square_root_eq_nonnegative:
  fixes a b :: real
  assumes "a = b" and "0 \<le> a" and "0 \<le> b"
  shows "sqrt a = sqrt b"
  using assms by simp