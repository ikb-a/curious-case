theorem solve_linear_equation_generalized:
  fixes a b c :: real
  assumes h0 : "a > 0"
    and h1 : "a * n + b = c"
  shows "n = (c - b) / a"
proof -
  have "a * n + b = c" using h1 by simp
  then have "a * n = c - b" by simp
  then show ?thesis using h0 by (simp add: field_simps)
qed