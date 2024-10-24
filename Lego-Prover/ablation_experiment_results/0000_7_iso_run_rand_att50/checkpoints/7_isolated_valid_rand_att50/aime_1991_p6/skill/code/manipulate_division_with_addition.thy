lemma manipulate_division_with_addition:
  fixes x a b c d :: real
  assumes "x \<noteq> 0" "a + b / x = c" "d \<ge> 0"
  shows "c * x + d = a * x + b + d"
proof -
  have "c * x = a * x + b" using assms(2) by (metis add.commute add_cancel_left_right assms(1) cancel_div_general_extended mult_eq_0_iff)
  then show ?thesis by (simp add: field_simps)
qed