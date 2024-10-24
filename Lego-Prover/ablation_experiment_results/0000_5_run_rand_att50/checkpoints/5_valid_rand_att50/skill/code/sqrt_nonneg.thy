lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  obtain b where "a = b^2" using assms by (metis order_less_le pos2 realpow_pos_nth_unique zero_power2)
  then show ?thesis by (simp add: sqrt_def)
qed