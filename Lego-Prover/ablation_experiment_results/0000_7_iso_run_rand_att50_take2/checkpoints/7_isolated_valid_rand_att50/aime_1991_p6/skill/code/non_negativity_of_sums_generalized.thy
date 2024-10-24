lemma non_negativity_of_sums_generalized:
  fixes x y n :: real
  assumes "x + y = n" and "x \<ge> 0" and "y \<ge> 0"
  shows "n \<ge> 0"
proof -
  have "x \<ge> 0" using assms(2) by simp
  have "y \<ge> 0" using assms(3) by simp
  thus ?thesis using assms(1) by (metis assms(2) dual_order.trans le_add_same_cancel2)
qed