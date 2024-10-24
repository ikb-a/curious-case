theorem mathd_algebra_generalized:
  fixes a b c :: real
  assumes h0: "p * a + q * b + r * c = s"
    and h1: "a = x"
    and h2: "p > 0" "q > 0" "r > 0"
  shows "b = (s - p * x - r * c) / q"
proof -
  have eq: "p * a + q * b + r * c = s" using h0 by simp
  have "p * x + q * b + r * c = s" using h1 eq by simp
  have "q * b = s - p * x - r * c" by (smt (verit) h0 h1)
  thus "b = (s - p * x - r * c) / q" using h2 by (simp add: field_simps)
qed