lemma substitution_and_simplification:
  fixes a :: int and b :: int and n :: int
  assumes "a + b = 73" and "a * n + b * (n + 1) = 546"
  shows "73 * n - a = 473"
proof -
  have "b = 73 - a" using assms(1) by simp
  then have "a * n + (73 - a) * (n + 1) = 546" using assms(2) by simp
  have "a * n + (73 - a) * n + (73 - a) = 546" by (metis \<open>b = 73 - a\<close> add.commute assms(1) assms(2) group_cancel.add2 mult.commute mult.right_neutral ring_class.ring_distribs(1) ring_class.ring_distribs(2))
  have "a * n + 73 * n - a * n + 73 - a = 546" by (metis \<open>a * n + (73 - a) * n + (73 - a) = 546\<close> \<open>b = 73 - a\<close> ab_semigroup_add_class.add_ac(1) add.commute add_diff_cancel_left' assms(1) assms(2) int_distrib(1) mult.commute)
  thus "73 * n - a = 473" using `a * n + 73 * n - a * n + 73 - a = 546`
      by (simp add: algebra_simps)
qed