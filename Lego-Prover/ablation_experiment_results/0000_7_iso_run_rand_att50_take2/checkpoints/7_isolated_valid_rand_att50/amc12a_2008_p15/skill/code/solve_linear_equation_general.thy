lemma solve_linear_equation_general:
  fixes n a b c :: nat
  assumes "a > 0"
  assumes "a*n + b = c"
  shows "n = (c - b) div a"
proof -
  have "a*n + b = c" using assms by simp
  then have "a*n = c - b" by simp
  then show "n = (c - b) div a" using `a > 0`
    by (smt (verit) div_mult_self1_is_m)
qed