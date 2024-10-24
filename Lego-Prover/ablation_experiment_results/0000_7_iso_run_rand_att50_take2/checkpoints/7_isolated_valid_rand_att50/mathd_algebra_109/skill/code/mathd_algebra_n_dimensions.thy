theorem mathd_algebra_n_dimensions:
  fixes a b :: real
  assumes h0: "3*a + 2*b = n"
    and h1: "a = m"
  shows "b = (n - 3 * m) / 2"
proof -
  have "3 * m + 2 * b = n" using h1 by (metis h0)
  have "2 * b = n - 3 * m" by (smt (verit) h0 h1)
  then show ?thesis by auto
qed