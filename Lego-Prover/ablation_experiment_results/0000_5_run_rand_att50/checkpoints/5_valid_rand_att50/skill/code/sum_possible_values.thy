lemma sum_possible_values:
  fixes N1 N2 :: nat
  assumes "N1 = 21" "N2 = 45"
  shows "N1 + N2 = 66"
proof -
  have "N1 + N2 = 21 + 45" using assms by simp
  also have "... = 66" by simp
  finally show ?thesis by simp
qed