theorem absolute_value_triangle_inequality:
  fixes a b c :: real
  assumes h0: "c > 0"
  shows "abs(a - b) \<le> abs(a - c) + abs(c - b)"
proof -
  have "a - b \<le> abs(a - c) + abs(c - b)" 
    by auto
  moreover have "b - a \<le> abs(a - c) + abs(c - b)"
    by auto
  ultimately show ?thesis by auto
qed