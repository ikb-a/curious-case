lemma logarithm_addition:
  fixes a b c x y :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0" and "x > 0" and "y > 0"
  shows "log a (x * y) = log a x + log a y"
proof -
  have "log a (x * y) = log a x + log a (y / 1)" using assms
    by (metis div_by_1 log_mult)
  also have "log a (y / 1) = log a y" by (simp add: assms(6) log_one)
  finally show ?thesis by simp
qed