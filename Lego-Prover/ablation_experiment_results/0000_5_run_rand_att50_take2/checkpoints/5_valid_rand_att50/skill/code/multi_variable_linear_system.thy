theorem multi_variable_linear_system:
  fixes a b c d :: real
  assumes h0 : "2*a + 3*b + d = 10"
    and h1 : "a + b = 3"
  shows "b = 3 - a \<and> d = 10 - 2*a - 3*(3 - a)"
proof -
  have eq1: "2*a + 3*b + d = 10" using h0 by simp
  have eq2: "a + b = 3" using h1 by simp
  then have b_expr: "b = 3 - a" by simp
  have substitute_d: "d = 10 - 2*a - 3*(3 - a)" using eq1 b_expr by simp
  show ?thesis using b_expr substitute_d by auto
qed