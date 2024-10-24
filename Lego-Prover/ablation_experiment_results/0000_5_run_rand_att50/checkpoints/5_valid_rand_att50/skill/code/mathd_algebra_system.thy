theorem mathd_algebra_system:
  fixes a b c :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
    and h2 : "c = 2 * b + 5"
  shows "b = 0 \<and> c = 5"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "3 * 4 + 2 * b = 12" using h1 eq by simp
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis \<open>12 + 2 * b = 12\<close> add_cancel_right_right)
  hence "b = 0" by simp
  from this have "c = 2 * 0 + 5" using h2 by simp
  thus ?thesis by (metis \<open>2 * b = 0\<close> \<open>b = 0\<close> add.group_left_neutral dbl_inc_simps(5) dbl_simps(3) h2)
qed