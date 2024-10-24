theorem mathd_algebra_n_dimensions:
  fixes a b :: real
    and n :: nat
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - 3 * a) / 2"
  using h1 h0 by (simp add: algebra_simps)