theorem multi_dimensional_algebra:
  fixes a :: "real list" and b :: "real list"
  assumes "length a = n" "length b = n" "3 * (a ! 0) + 2 * (b ! 0) = 12" 
    and "a ! 0 = 4"
  shows "b ! 0 = 0"
proof -
  have "3 * (a ! 0) + 2 * (b ! 0) = 12" using assms(3) by simp
  have "3 * 4 + 2 * (b ! 0) = 12" using assms(4) by (metis add.left_commute add.right_neutral add_0_iff assms(3) comm_monoid_add_class.add_0 mult_2)
  have "12 + 2 * (b ! 0) = 12" by (smt (verit) \<open>3 * 4 + 2 * b ! 0 = 12\<close>)
  have "2 * (b ! 0) = 0" by (smt (verit) assms(3) assms(4))
  thus ?thesis using `2 * (b ! 0) = 0` by simp
qed