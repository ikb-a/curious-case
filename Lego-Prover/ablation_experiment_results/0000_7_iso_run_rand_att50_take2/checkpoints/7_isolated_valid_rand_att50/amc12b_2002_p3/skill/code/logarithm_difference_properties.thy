lemma logarithm_difference_properties:
  fixes a b c d :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "d > 0"
  shows "log a (b * c / d) = log a b + log a c - log a d"
proof -
  have "log a (b * c / d) = log a (b * c) - log a d" using assms
    by (simp add: log_divide)
  also have "log a (b * c) = log a b + log a c" using assms
    by (metis log_mult)
  finally show ?thesis by simp
qed