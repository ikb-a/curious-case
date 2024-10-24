lemma sqrt_square_for_non_negative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a * sqrt a = a"
using sqrt_square_general[of a] assms by simp