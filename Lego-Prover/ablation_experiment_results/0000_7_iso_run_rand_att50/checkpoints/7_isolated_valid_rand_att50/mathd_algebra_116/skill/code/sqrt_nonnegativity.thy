lemma sqrt_nonnegativity:
  fixes x y :: real
  assumes "x >= 0" "y >= 0"
  shows "sqrt(x) + sqrt(y) >= sqrt(x + y)"
proof -
  have "sqrt(x) + sqrt(y) = sqrt(x) + sqrt(y) + 0" by simp
  then have "sqrt(x) + sqrt(y) - sqrt(x + y) >= 0" using assms by (smt (verit) le_diff_eq sqrt_add_le_add_sqrt)
  then show ?thesis by simp
qed