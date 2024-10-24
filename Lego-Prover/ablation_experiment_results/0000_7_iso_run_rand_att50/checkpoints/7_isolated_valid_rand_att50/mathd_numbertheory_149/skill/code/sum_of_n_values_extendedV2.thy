theorem sum_of_n_values_extended:
  fixes n1 n2 n3 n4 :: nat
  assumes "n1 = a" "n2 = b" "n3 = c" "n4 = d"
  shows "n1 + n2 + n3 + n4 = a + b + c + d"
proof -
  have "n1 + n2 + n3 + n4 = a + b + c + d" using assms by simp
  thus ?thesis by simp
qed