theorem amc12b_2003_p9_multi:
  fixes a :: "real \<Rightarrow> real" and b :: "real \<Rightarrow> real"
  assumes "\<forall> x. a x = a' * x + b'"
    and "a 6 - a 2 = 12"
  shows "a 12 - a 2 = 30"
proof -
  let ?a' = "a'"
  let ?b' = "b'"
  have "a 6 - a 2 = (?a' * 6 + ?b') - (?a' * 2 + ?b')"
    using assms(1) by simp
  then have "a 6 - a 2 = ?a' * 6 - ?a' * 2"
    by simp
  then have "a 6 - a 2 = ?a' * (6 - 2)"
    by (simp add: algebra_simps)
  then have "a 6 - a 2 = 4 * ?a'" using assms(2) by simp
  then have "4 * ?a' = 12" by (metis assms(2) dbl_simps(3))
  then have "?a' = 12 / 4" by (simp add: field_simps)
  then have "?a' = 3" by simp
  have "a 12 - a 2 = (?a' * 12 + ?b') - (?a' * 2 + ?b')"
    using assms(1) by simp
  then have "a 12 - a 2 = ?a' * 12 - ?a' * 2"
    by simp
  then have "a 12 - a 2 = ?a' * (12 - 2)"
    by (simp add: algebra_simps)
  then have "a 12 - a 2 = ?a' * 10" by simp
  then have "a 12 - a 2 = 3 * 10" using `?a' = 3` by simp
  then show ?thesis by simp
qed