lemma non_zero_sum_property_extended:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "x * (1 / x) + y * (1 / y) = 2"
proof -
  have "x * (1 / x) = 1" using assms(1) by simp
  hence "y * (1 / y) = 1" using assms(2) by simp
  thus ?thesis by (metis \<open>x * (1 / x) = 1\<close> one_add_one)
qed