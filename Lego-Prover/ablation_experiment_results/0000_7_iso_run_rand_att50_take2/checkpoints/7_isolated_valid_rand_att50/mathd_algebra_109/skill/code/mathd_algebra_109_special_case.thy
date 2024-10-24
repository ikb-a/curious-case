theorem mathd_algebra_109_special_case:
  fixes b :: real
  assumes h0 : "3*a + 2*b = 12"
    and h1 : "a = 4"
  shows "b = 0"
proof -
  have "3 * 4 + 2 * b = 12" using h1 by (metis h0)
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  thus "b = 0" using `12 + 2 * b = 12` by (simp add: field_simps)
qed