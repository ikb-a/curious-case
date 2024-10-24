theorem linear_equation_substitution:
  fixes a b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = k"  
  shows "b = (12 - 3*k) / 2"
proof -
  have eq: "3*a + 2*b = 12" using h0 by simp
  have sub: "3 * k + 2 * b = 12" using h1 eq by simp
  then have "2*b = 12 - 3*k" by (simp add: algebra_simps)
  then show ?thesis by (simp add: divide_simps)
qed