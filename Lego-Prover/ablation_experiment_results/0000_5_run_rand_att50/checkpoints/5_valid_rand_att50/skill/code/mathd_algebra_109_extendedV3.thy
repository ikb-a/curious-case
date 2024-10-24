theorem mathd_algebra_109_extended:
  fixes a b c :: real
  assumes h0 : "3*a + 2*b = c"
    and h1 : "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 eq by simp
  have "12 + 2 * b = c" by (smt (verit) \<open>3 * 4 + 2 * b = c\<close>)
  hence "2 * b = c - 12" by (simp add: algebra_simps)
  thus ?thesis by (simp add: field_simps)
qed