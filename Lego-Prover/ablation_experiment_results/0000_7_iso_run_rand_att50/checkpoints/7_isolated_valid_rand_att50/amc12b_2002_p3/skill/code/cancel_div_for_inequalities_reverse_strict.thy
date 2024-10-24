lemma cancel_div_for_inequalities_reverse_strict:
  fixes x a b c :: real
  assumes "x > 0" "a * x + b < c * x"
  shows "a + (b / x) < c"
proof -
  have "x * (a + (b / x)) < c * x" using assms by sos
  thus ?thesis by (metis assms(1) assms(2) cancel_div_for_inequalities_reverse_gen)
qed