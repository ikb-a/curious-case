theorem sum_of_n_values:
  fixes n1 n2 n3 n4 :: nat
  shows "n1 + n2 + n3 + n4 = (n1 + n2 + n3 + n4)"
proof -
  show ?thesis by simp
qed