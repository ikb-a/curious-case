lemma logarithm_base_identity_general:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0" "b \<noteq> 1"
  shows "log a b = log a (b^1)"
proof -
  have "log a b = log a (b^1)" by auto
  then show ?thesis using assms by auto
qed