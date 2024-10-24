lemma multi_square_expansion:
  fixes x :: "real list" and i j :: nat
  assumes "length x > max i j"
  shows "(x ! i - x ! j)^2 = (x ! i)^2 - 2 * (x ! i) * (x ! j) + (x ! j)^2"
  by (simp add: power2_diff)