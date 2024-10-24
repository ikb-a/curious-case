lemma logarithm_difference_extended_properties:
  fixes a b c d e f :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "d > 0" and "e > 0" and "f > 0"
  shows "log a (b * c / (d * e)) = log a b + log a c - log a d - log a e"
proof -
  have "log a (b * c / (d * e)) = log a (b * c) - log a (d * e)" using assms
    by (simp add: log_divide)
  also have "log a (b * c) = log a b + log a c" using assms
    by (metis log_mult)
  also have "log a (d * e) = log a d + log a e" using assms
    by (metis log_mult)
  finally show ?thesis by simp
qed