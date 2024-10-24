lemma number_of_terms:
  fixes x :: nat
  assumes "7 * (73 - x) + 8 * x = 546"
  shows "x = 35"
proof -
  have "7 * (73 - x) + 8 * x = 546" using `7 * (73 - x) + 8 * x = 546` by simp
  then have "511 - 7*x + 8*x = 546" by simp
  then have "511 + x = 546" by simp
  hence "x = 546 - 511" by simp
  thus ?thesis by simp
qed