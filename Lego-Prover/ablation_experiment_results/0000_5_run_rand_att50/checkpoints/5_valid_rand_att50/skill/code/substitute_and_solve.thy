lemma substitute_and_solve:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = c"
    and h1: "a = k"
  shows "b = (c - 3 * k) / 2"
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  then have "3 * k + 2 * b = c" using h1 by simp
  then show ?thesis by simp
qed