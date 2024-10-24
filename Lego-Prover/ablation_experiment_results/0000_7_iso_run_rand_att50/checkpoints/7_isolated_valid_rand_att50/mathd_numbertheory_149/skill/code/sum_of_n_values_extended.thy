theorem sum_of_n_values_extended:
  fixes n1 n2 n3 n4 :: nat
  assumes "n1 = 21" "n2 = 45" "n3 = 5" "n4 = 10"
  shows "n1 + n2 + n3 + n4 = 81"
proof -
  have "n1 + n2 + n3 + n4 = 21 + 45 + 5 + 10" using assms by simp
  thus ?thesis by simp
qed