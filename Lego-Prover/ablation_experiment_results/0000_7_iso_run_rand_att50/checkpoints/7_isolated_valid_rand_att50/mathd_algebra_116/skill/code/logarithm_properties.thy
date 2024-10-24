lemma logarithm_properties:
  fixes a b :: real
  assumes "a > 0" "b > 0" "a \<noteq> 1" "b \<noteq> 1"
  shows "log a (b^n) = n * log a b"
proof -
  have "log a (b^n) = n * log a b" using log_nat_power[of b a n] by (simp add: assms(1) assms(2))
  then show ?thesis by simp
qed