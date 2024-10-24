lemma logarithm_properties:
  fixes a b c :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0"
  shows "log a (b * c) = log a b + log a c"
  using assms
  by (metis log_mult)