theorem mathd_algebra_generalized:
  fixes a b c d :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a + b = d"
  shows "b = (c - 3*a) / 2"
proof -
  have eq1: "3*a + 2*b = c" using h0 by simp
  have eq2: "a + b = d" using h1 by simp
  have isolate_b: "b = d - a" using eq2 by simp
  have substitution: "3*a + 2*(d - a) = c" using isolate_b eq1 by simp
  have simplified: "3*a + 2*d - 2*a = c" by (smt (verit) h0 h1)
  have isolate_a: "a + 2*d = c" by (smt (verit) h0 h1)
  have result: "b = (c - 3*a) / 2" using eq1 by auto
  show ?thesis using result by simp
qed