theorem multi_distrib_complex_complete:
  fixes a b c d e f g h :: complex
  assumes "g = a + b" "h = c + d"
  shows "g * h = (a * c + a * d + b * c + b * d)"
proof -
  have "g * h = (a + b) * (c + d)" using assms by auto
  thus ?thesis using multi_distrib_complex by simp
qed