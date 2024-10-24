lemma parity_of_sum:
  fixes a b :: nat
  assumes "even a" and "even b"
  shows "even (a + b)"
  using assms
  by auto