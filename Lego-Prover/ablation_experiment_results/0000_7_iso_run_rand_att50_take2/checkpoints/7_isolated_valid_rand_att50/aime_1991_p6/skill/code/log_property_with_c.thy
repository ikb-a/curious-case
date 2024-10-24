lemma log_property_with_c:
  fixes a b c :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "c > 0"
  shows "log a (c * b) = log a c + log a b"
proof -
  have "log a (c * b) = log a c + log a b" by (metis assms(1) assms(2) assms(3) assms(4) log_mult)
  then show ?thesis by simp
qed