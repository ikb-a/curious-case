lemma non_zero_sum_property:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) + b * (1 / b) = 2"
proof -
  have "a * (1 / a) = 1" using assms(1) by simp
  hence "b * (1 / b) = 1" using assms(2) by simp
  thus ?thesis by (metis \<open>a * (1 / a) = 1\<close> one_add_one)
qed