theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = x"  
  shows "b = (c - 3*x) / 2"  
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * x + 2 * b = c" using h1 eq by simp
  have isolate: "2*b = c - 3*x" using sub by simp
  have solution: "b = (c - 3*x) / 2" using isolate by simp
  show ?thesis using solution by simp
qed