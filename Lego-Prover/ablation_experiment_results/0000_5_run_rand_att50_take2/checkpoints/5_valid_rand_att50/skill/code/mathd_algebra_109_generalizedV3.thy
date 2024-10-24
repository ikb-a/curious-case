theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
    and h2 : "c \<ge> 0"  
  shows "b = (c - 12) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  have isolate: "2*b = c - 12" by (smt (verit) h0 h1)
  thus ?thesis by auto
qed