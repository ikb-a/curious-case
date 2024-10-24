lemma inequality_solution:
  fixes N m :: nat
  assumes "N < 50" "N = 24 * m + 21"
  shows "m < 2"
proof -
  from assms(1) have "24 * m + 21 < 50" by (metis assms(2))
  hence "24 * m < 50 - 21" by (simp add: algebra_simps)
  hence "24 * m < 29" by simp
  then have "m < 29 / 24" by (simp add: less_divide_eq)
  thus ?thesis by simp
qed