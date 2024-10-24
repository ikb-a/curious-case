lemma solve_linear_equation_generalized:
  fixes n :: nat
  assumes "a > 0"
  assumes "a * n + b = c"
  shows "n = (c - b) div a"
proof -
  have "a * n + b = c" using assms by simp
  then have "a * n = c - b" by simp
  then have "n = (c - b) div a" using `a > 0`
    by (smt (verit) div_mult_self1_is_m)
  then show ?thesis by simp
qed