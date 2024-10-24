lemma sqrt_square_general:
  fixes a :: real
  shows "sqrt (x^2) = abs x"
  by (cases "x >= 0") (auto simp: sqrt_square_nonneg)