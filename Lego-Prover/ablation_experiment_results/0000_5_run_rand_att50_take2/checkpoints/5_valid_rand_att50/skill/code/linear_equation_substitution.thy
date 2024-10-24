lemma linear_equation_substitution:
  fixes a b :: real
  assumes h0: "3*a + 2*b = k" 
    and h1: "a = c"
  shows "b = (k - 3*c) / 2"
proof -
  have eq: "3*a + 2*b = k" using h0 by simp
  then have sub: "3 * c + 2 * b = k" using h1 by simp
  then have simplified: "2*b = k - 3*c" by (simp add: algebra_simps)
  then show ?thesis by auto
qed