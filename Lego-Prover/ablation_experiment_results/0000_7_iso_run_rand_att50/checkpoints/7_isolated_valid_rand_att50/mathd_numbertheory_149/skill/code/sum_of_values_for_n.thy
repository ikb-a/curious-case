lemma sum_of_values_for_n:
  fixes n :: nat
  assumes "n = 21 + 45"
  shows "n = 66"
proof -
  have "n = 21 + 45" using assms by simp
  thus ?thesis by auto
qed