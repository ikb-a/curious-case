lemma solve_linear_system:
  fixes a b p :: real
  assumes h0 : "m*a + n*b = p"
    and h1 : "a = a_value"  
    and h2 : "n \<noteq> 0"
  shows "b = (p - m*a_value) / n"
proof -
  have "m*a + n*b = p" using h0 by simp
  have "m*a_value + n*b = p" using h1 by (metis h0)
  then have "n*b = p - m*a_value" by simp
  then have "b = (p - m*a_value) / n" using h2
    by (auto simp: field_simps)
  then show ?thesis by simp
qed