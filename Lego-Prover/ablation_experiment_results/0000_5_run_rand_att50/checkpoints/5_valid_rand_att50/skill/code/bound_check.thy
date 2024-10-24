lemma bound_check:
  fixes N :: nat and m :: nat
  assumes "N = 24 * m + 21" "N < 50"
  shows "m < 2"
proof -
  from assms(2) have "24 * m + 21 < 50" by (metis assms(1))
  hence "24 * m < 50 - 21" by (simp add: algebra_simps)
  hence "24 * m < 29" by simp
  then have "m < 29 / 24" by auto
  then have "m < 2" by (simp add: less_divide_eq)
  thus ?thesis by simp
qed