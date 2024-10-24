lemma sqrt_eq_general:
  fixes x :: real
  assumes "sqrt (x + c) = d" and "c > 0" and "d > 0"
  shows "x = d^2 - c"
proof -
  have "x + c = d^2" using assms by auto
  then show "x = d^2 - c" by simp
qed