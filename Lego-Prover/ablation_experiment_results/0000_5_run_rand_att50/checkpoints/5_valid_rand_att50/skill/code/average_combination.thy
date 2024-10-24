lemma average_combination:
  fixes total1 total2 :: real and count1 count2 :: nat
  assumes "count1 > 0" "count2 > 0"
  shows "(total1 + total2) / (real count1 + real count2) = 
         (total1 / real count1) * (count1 / (count1 + count2)) + 
         (total2 / real count2) * (count2 / (count1 + count2))"
proof -
  have "real (count1 + count2) = real count1 + real count2" by simp
  also have "... > 0" using assms by simp
  then show ?thesis
    by (smt (verit) add_divide_distrib assms(1) assms(2) calculation divide_eq_eq of_nat_0_eq_iff order_less_imp_not_eq times_divide_eq_right)
qed