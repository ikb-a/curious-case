lemma logarithm_properties:
  fixes a b c :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0"
  shows "log a (b / c) = log a b - log a c"
proof -
  have "log a (b / c) = log a b + log a (1/c)" using assms
    by (smt (verit) log_divide log_one)
  also have "log a (1/c) = -log a c" using assms
    by (smt (verit) calculation log_divide)
  finally show ?thesis by simp
qed