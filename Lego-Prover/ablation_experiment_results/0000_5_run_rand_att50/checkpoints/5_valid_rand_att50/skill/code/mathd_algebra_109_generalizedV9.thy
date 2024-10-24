theorem mathd_algebra_109_generalized:
  fixes a b c :: real
  assumes h0: "3 * a + 2 * b = c" 
      and h1: "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  have "3 * 4 + 2 * b = c" using h1 by (metis dbl_inc_simps(3) dbl_simps(3) h0)
  have "12 + 2 * b = c" by (smt (verit) \<open>3 * 4 + 2 * b = c\<close>)
  hence "2 * b = c - 12" by (simp add: field_simps)
  thus ?thesis by (simp add: field_simps)
qed