lemma cancel_div_with_params_multi:
  fixes x a b c p q :: real
    and n :: nat
  assumes "x > 0" "a + b / x = c" "p = a" "q = b"
  shows "(\<Sum>i=1..n. p * x + q) = (\<Sum>i=1..n. c * x)"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then have "x * a + x * (b / x) = c * x" by (simp add: distrib_left)
  then have "p * x + q = c * x" using assms(3) assms(4) by (metis add.commute assms(1) divide_divide_eq_left' divide_divide_eq_right divide_less_eq_1_pos divide_self_if less_numeral_extra(1) mult.commute mult.right_neutral real_divide_square_eq times_divide_eq_left times_divide_eq_right verit_comp_simplify1(1))
  hence "(\<Sum>i=1..n. p * x + q) = (\<Sum>i=1..n. c * x)" 
    by (simp add: sum.cong)
  thus ?thesis by auto
qed