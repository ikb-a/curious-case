lemma gcd_positive:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "gcd a b > 0"
  using assms by auto