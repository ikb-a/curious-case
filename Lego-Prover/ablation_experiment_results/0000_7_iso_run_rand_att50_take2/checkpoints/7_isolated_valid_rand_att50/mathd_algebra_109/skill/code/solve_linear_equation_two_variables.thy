lemma solve_linear_equation_two_variables:
  fixes a b :: real
  assumes h0 : "m*a + n*b = p" 
    and h1 : "a = q"
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*q)/n"
proof -
  have "m*q + n*b = p" using h0 h1 by simp
  then have "n*b = p - m*q" by simp
  then have "b = (p - m*q) / n" using h2 by (auto simp: field_simps)
  then show ?thesis by simp
qed