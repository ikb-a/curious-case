lemma improve_cancel_div_for_inequalities:
  fixes x a b c d e :: real
  assumes "x > 0" "a + b / x < c" "d = a" "e = b"
  shows "c * x > d * x + e"
proof -
  have "c * x > a * x + b" using assms(2) by (metis add.commute assms(1) divide_add_eq_iff less_numeral_extra(3) pos_divide_less_eq)
  then show ?thesis using assms(3) assms(4) by (metis distrib_left)
qed