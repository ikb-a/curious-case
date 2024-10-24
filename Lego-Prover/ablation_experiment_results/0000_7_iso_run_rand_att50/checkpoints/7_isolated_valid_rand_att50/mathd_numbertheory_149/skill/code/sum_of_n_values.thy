theorem sum_of_n_values:
  fixes n1 n2 n3 :: nat
  assumes "n1 = 21" "n2 = 45" "n3 = 5"
  shows "n1 + n2 + n3 = 71"
proof -
  have "n1 + n2 + n3 = 21 + 45 + 5" using assms by simp
  thus ?thesis by simp
qed