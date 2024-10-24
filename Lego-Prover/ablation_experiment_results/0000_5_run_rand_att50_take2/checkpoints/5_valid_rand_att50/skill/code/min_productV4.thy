lemma min_product:
  fixes a b :: real
  assumes "a \<ge> 1" "b \<ge> 1"
  shows "a * b \<ge> 1"
proof -
  from assms have "a \<ge> 1" by simp
  from assms have "b \<ge> 1" by simp
  hence "a * b \<ge> 1 * 1" by (metis assms(1) leD less_1_mult mult.right_neutral mult_1 not_less_iff_gr_or_eq order_less_imp_le)
  thus "a * b \<ge> 1" by simp
qed