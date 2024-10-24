lemma mathd_algebra_109_extended:
  fixes a b :: real
  assumes "3 * a + 2 * b = 12" "a = 4"
  shows "b = 0"
proof -
  have "3 * a + 2 * b = 12" using assms(1) by simp
  have "3 * 4 + 2 * b = 12" using assms(2) by (metis assms(1) dbl_inc_simps(3) dbl_simps(3))
  have "12 + 2 * b = 12" by (smt (verit) \<open>3 * 4 + 2 * b = 12\<close>)
  have "2 * b = 0" by (metis `12 + 2 * b = 12` add_cancel_right_right)
  show ?thesis using `2 * b = 0` by simp
qed