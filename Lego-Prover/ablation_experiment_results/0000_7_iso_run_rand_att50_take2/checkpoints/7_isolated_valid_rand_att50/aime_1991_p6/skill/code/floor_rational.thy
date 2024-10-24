lemma floor_rational:
  fixes r :: real
  assumes "r = a / b" and "b > 0"
  shows "floor r = floor a div b"
proof -
  have "r = a / b" by (rule assms(1))
  then have "floor r * b \<le> a" using assms(2) by (auto simp: field_simps)
  then have "floor a div b \<le> floor r" using assms(2) by (smt (verit) assms(1) dual_order.eq_iff floor_divide_real_eq_div leD mult_less_cancel_right)
  then show "floor r = floor a div b" by (smt (verit) assms(1) assms(2) floor_divide_real_eq_div nless_le)
qed