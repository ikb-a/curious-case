lemma linear_equation:
  fixes a b :: real
  assumes h0: "m * a + n * b = p"
    and h1: "a = c"
  shows "m * c + n * b = p"
proof -
  have eq: "m * a + n * b = p" using h0 by simp
  have sub: "m * c + n * b = p" using h1 eq by simp
  show ?thesis using sub by simp
qed