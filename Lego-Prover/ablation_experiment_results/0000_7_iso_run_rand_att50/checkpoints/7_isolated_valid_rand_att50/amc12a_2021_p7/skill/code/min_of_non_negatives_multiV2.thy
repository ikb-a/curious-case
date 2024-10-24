lemma min_of_non_negatives_multi:
  fixes a :: "real set" and n :: nat
  assumes "finite a" and "\<forall>x\<in>a. x >= 0"
  shows "sum id a >= 0"
proof -
  have "sum id a = sum (\<lambda>x. x) a" by simp
  also have "... >= 0" using assms by (metis sum_nonneg)
  finally show ?thesis .
qed