lemma solve_linear_system:
  fixes a b :: nat
  assumes "a + b = 73" "7 * a + 8 * b = 546"
  shows "a = 38 \<and> b = 35"