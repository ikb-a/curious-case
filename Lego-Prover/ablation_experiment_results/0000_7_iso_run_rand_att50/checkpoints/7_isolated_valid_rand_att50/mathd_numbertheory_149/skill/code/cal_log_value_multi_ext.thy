lemma cal_log_value_multi_ext:
  fixes a :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0"
  shows "\<forall>c. log a (a^c) = c"
by (metis assms(1) assms(2) log_pow_cancel)