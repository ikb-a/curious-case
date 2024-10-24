theorem substitution_in_linear_equation:
  fixes a b :: real
  assumes h0 : "m * a + n * b = c"
    and h1 : "a = k"
  shows "m * k + n * b = c"
proof -
  have eq: "m * a + n * b = c" using h0 by simp
  then show ?thesis using h1 by simp
qed