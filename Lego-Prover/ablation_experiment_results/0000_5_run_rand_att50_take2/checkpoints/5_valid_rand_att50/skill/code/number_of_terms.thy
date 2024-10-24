lemma number_of_terms:
  fixes x :: nat
  assumes "7 * (73 - x) + 8 * x = 546"
  shows "x = 35"
proof -
  have "7 * (73 - x) + 8 * x = 546" using assms by simp
  then have "511 - 7 * x + 8 * x = 546" by auto
  then have "511 + x = 546" by simp
  then have "x = 546 - 511" by (simp)
  then show "x = 35" by simp
qed