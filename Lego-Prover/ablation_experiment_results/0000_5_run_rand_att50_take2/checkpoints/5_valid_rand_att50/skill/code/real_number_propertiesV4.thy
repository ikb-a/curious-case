lemma real_number_properties:
  fixes x y z :: real
  assumes "x = y"
  shows "x + z = y + z"
proof -
  have "x + z = y + z" using assms by simp
  thus ?thesis by simp
qed