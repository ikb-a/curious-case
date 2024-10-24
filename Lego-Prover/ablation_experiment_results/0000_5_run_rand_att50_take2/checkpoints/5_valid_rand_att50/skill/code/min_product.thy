lemma min_product:
  fixes a b :: real
  assumes "a \<ge> 1" "b \<ge> 1"
  shows "a * b \<ge> 1"
proof -
  have "a * b \<ge> 1 * 1" by (metis assms(1) assms(2) leD less_1_mult mult.right_neutral mult_1 not_less_iff_gr_or_eq order_less_imp_le)
  thus ?thesis by simp
qed