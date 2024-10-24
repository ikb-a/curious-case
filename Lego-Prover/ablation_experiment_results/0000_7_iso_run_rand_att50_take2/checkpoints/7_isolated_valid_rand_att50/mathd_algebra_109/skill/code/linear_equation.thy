lemma linear_equation:
  fixes a b :: real
  assumes h0: "m * a + n * b = c"
    and h1: "a = d"
  shows "n * b = c - m * d"
proof -
  have "m * d + n * b = c" using h0 h1 by simp
  then show ?thesis by simp
qed