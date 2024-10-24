lemma logarithmic_identity_base_change:
  fixes a b c :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0"
  shows "log a (b * c) = log a b + log a c"
proof -
  have "log a (b * c) = log a b + log a c" 
    by (simp add: log_mult assms(1) assms(2) assms(3) assms(4))
  then show ?thesis by simp
qed