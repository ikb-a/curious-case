lemma count_positive:
  fixes count :: nat
  assumes "count > 0"
  shows "real_of_nat count > 0"
proof -
  have "count > 0" using assms by simp
  then show ?thesis by auto
qed