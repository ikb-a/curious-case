lemma substitution_and_simplification:
  fixes a b c :: real
  assumes h0: "k * a + m * b = n"
    and h1: "a = p"
  shows "k * p + m * b = n"
proof -
  have "k * a + m * b = n" using h0 by simp
  then have "k * p + m * b = n" using h1 by simp
  thus ?thesis by simp
qed