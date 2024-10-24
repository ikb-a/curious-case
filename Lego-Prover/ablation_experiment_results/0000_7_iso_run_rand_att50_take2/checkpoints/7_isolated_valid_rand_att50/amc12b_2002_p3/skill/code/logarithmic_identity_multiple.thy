lemma logarithmic_identity_multiple:
  fixes a :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "c > 0"
  shows "log a (b * c) = log a b + log a c"
proof -
  have "log a (b * c) = log a b + log a c" using assms
    by (metis log_mult)
  then show ?thesis by simp
qed