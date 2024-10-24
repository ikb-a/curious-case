lemma inequality_solution:
  fixes N m :: nat
  assumes "N < 50" "N = 24 * m + 21"
  shows "m < 2"
proof -
  from assms(1) have "N < 50" by simp
  from assms(2) have "N = 24 * m + 21" by simp
  have "24 * m + 21 < 50" using assms(1) by (metis assms(2))
  hence "24 * m < 50 - 21" by (simp add: algebra_simps)
  hence "24 * m < 29" by simp
  have "m < 29 / 24" by (metis \<open>24 * m < 29\<close> less_divide_eq_numeral1(1) mult.commute of_nat_mult of_nat_numeral real_of_nat_less_numeral_iff)
  thus ?thesis by simp
qed