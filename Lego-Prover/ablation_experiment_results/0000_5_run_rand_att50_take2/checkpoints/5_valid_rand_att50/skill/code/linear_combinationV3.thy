lemma linear_combination:
  fixes a b c d :: nat
  assumes "a * x + b * y = c"
  assumes "a > 0" "b > 0" "c > 0"  
  shows "x = (c - b * y) / a"
proof -
  have "a * x = c - b * y" using assms(1) by simp
  have "x = (c - b * y) / a" using `a * x = c - b * y` by (smt (verit) assms(2) diff_divide_distrib div_mult_self1_is_m mod_mult_self1_is_0 of_nat_0 real_of_nat_div4 real_of_nat_div_aux)
  thus ?thesis by simp
qed