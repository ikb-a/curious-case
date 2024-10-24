lemma min_product:
  fixes a b :: real
  assumes "a \<ge> 1" "b \<ge> 1"
  shows "a * b \<ge> 1"
proof -
  from assms have "a - 1 \<ge> 0" and "b - 1 \<ge> 0" by auto
  then have "a * b = (1 + (a - 1)) * (1 + (b - 1))" by (simp add: algebra_simps)
  also have "... = 1 + (a - 1) + (b - 1) + (a - 1) * (b - 1)" by sos
  finally show "a * b \<ge> 1" by (metis assms(1) assms(2) comm_monoid_mult_class.mult_1 leD less_1_mult mult.right_neutral not_less_iff_gr_or_eq order.strict_iff_order order_less_imp_le)
qed