theorem square_root_properties:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x >= 0" using assms by auto
  thus ?thesis by simp
qed