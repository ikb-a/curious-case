lemma substitution_in_linear_equation:
  fixes a b :: real
  assumes h0 : "c * a + d * b = e"
    and h1 : "a = f"
  shows "c * f + d * b = e"
proof -
  have "c * a + d * b = e" using h0 by simp
  then have "c * f + d * b = e" using h1 by simp
  thus ?thesis by simp
qed