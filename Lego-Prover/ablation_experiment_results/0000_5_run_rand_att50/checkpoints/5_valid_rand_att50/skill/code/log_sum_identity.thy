lemma log_sum_identity:
  fixes a x y :: real
  assumes "a > 0" "a \<noteq> 1" "x > 0" "y > 0"
  shows "log a (x * y) = log a x + log a y"
proof -
  have "log a (x * y) = log a x + log a y" using log_mult[of a x y] assms by simp
  then show ?thesis by simp
qed