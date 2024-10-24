lemma manipulate_division:
  fixes x a b c d :: real
  assumes "x > 0" 
      and "a + b / x = c" 
      and "c + d / x = e"
  shows "b = (c - a) * x" 
     and "d = (e - c) * x"
proof -
  have "b = (c - a) * x" 
    using assms(2) by (smt (verit) assms(1) diff_add_eq nonzero_eq_divide_eq order_less_imp_not_eq)
  thus "b = (c - a) * x" by simp
  have "d = (e - c) * x" 
    using assms(3) by (smt (verit) assms(1) diff_add_eq nonzero_eq_divide_eq order_less_imp_not_eq)
  thus "d = (e - c) * x" by simp
qed