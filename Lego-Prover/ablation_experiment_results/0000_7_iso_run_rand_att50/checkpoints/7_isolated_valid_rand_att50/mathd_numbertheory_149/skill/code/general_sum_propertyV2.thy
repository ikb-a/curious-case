theorem general_sum_property:
  fixes a b c d :: nat
  assumes "a > 0" "b > 0" "c > 0" "d > 0"
  shows "a + b + c + d = a + b + c + d"
proof -
  show ?thesis by simp
qed