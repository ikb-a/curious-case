lemma logarithm_properties_for_any_base:
  fixes a b c :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0"
  shows "log a (b / c) = log a b - log a c"
  and "log a (b * c) = log a b + log a c"
proof -
  have "log a (b / c) = log a b + log a (1/c)" using assms
    by (smt (verit) log_divide log_one)
  also have "log a (1/c) = -log a c" using assms
    by (smt (verit) calculation log_divide)
  then have "log a (b / c) = log a b - log a c" by (metis assms(1) assms(2) assms(3) assms(4) logarithm_properties_generalized uminus_add_conv_diff)
  then show "log a (b / c) = log a b - log a c" by simp
  have "log a (b * c) = log a b + log a c" using assms
    by (metis log_mult)
  then show "log a (b * c) = log a b + log a c" by simp
qed