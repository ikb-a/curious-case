theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "m * a + c = n"
    and h1 : "a = k"
  shows "m * k + c = n"
proof -
  have eq: "m * a + c = n" using h0 by simp
  have "m * k + c = n" using h1 eq by simp
  show ?thesis by (metis \<open>m * k + c = n\<close>)
qed