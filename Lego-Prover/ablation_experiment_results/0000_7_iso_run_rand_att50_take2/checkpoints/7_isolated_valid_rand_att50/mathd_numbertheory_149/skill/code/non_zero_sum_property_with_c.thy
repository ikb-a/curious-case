lemma non_zero_sum_property_with_c:
  fixes a b c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0"
  shows "a * (1 / a) + b * (1 / b) + c * (1 / c) = 3"
proof -
  have "a * (1 / a) = 1" using assms(1) by simp
  hence "b * (1 / b) = 1" using assms(2) by simp
  hence "c * (1 / c) = 1" using assms(3) by simp
  thus ?thesis by (metis \<open>a * (1 / a) = 1\<close> \<open>b * (1 / b) = 1\<close> add.commute dbl_def dbl_simps(3) numeral_plus_one semiring_norm(3) semiring_norm(5))
qed