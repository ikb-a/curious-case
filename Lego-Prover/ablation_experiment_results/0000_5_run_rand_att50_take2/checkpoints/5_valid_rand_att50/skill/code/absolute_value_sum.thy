lemma absolute_value_sum:
  fixes a b :: real
  shows "abs(a + b) \<le> abs(a) + abs(b)"
  by (metis abs_triangle_ineq)