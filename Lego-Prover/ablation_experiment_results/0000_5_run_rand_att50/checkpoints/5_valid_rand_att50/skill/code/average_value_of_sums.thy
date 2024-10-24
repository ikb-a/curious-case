lemma average_value_of_sums:
  fixes total1 total2 :: real and count1 count2 :: nat
  assumes "count1 > 0" "count2 > 0"
  shows "(total1 + total2) / real (count1 + count2) = (total1 / real count1) * (count1 / (count1 + count2)) + (total2 / real count2) * (count2 / (count1 + count2))"
proof -
  have "total1 + total2 = (total1 / real count1) * count1 + (total2 / real count2) * count2" by (smt (verit) assms(1) assms(2) nat_less_le nonzero_eq_divide_eq of_nat_0_eq_iff)
  hence "(total1 + total2) / real (count1 + count2) = ((total1 / real count1) * count1 + (total2 / real count2) * count2) / real (count1 + count2)" by simp
  thus ?thesis by (smt (verit) add_divide_distrib times_divide_eq_right)
qed