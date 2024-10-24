theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0 : "c = 3*a + 2*b"
    and h1 : "a = x"  
  shows "b = (c - 3*x) / 2"
proof -
  have "c = 3*x + 2*b" using h1 by (metis h0)
  thus ?thesis by (simp add: h0)
qed