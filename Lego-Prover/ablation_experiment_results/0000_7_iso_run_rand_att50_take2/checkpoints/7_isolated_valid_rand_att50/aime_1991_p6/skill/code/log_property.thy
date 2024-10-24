lemma log_property:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0"
  shows "log a (a * b) = 1 + log a b"
proof -
  have "log a (a * b) = log a a + log a b" by (metis assms(1) assms(2) assms(3) log_mult)
  then have "log a (a * b) = 1 + log a b" using assms(1) assms(2) by simp
  then show ?thesis by simp
qed