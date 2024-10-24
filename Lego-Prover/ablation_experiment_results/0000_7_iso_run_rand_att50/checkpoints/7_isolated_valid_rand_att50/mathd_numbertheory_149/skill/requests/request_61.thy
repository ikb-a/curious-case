lemma lcm_non_zero:
  fixes a b :: nat
  assumes "a > 0" and "b > 0"
  shows "lcm a b > 0"