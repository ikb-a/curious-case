theorem algebra_nvar_linear_eq:
  fixes x :: "complex" and e :: "complex"
  assumes "n > 0" "k > 0" "A = {i. i < n}" "B = {j. j < k}"
  assumes h0: "x + e = 7"
      and h1: "2 * x + e = 3"
  shows "e = 11 \<and> x = (-4)"
proof -
  have eq1: "e = 7 - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq3: "2 * x - x + 7 = 3" using eq2 by simp
  then have "x + 7 = 3" by simp 
  then have "x = 3 - 7" by (metis add.commute add_diff_cancel diff_add_eq minus_add_cancel numeral_neq_neg_numeral square_eq_iff uminus_add_conv_diff)
  then have "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed