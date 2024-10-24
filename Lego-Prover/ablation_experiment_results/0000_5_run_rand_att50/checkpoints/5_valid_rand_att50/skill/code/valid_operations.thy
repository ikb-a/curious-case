lemma valid_operations:
  fixes x y z :: real
  assumes "x = y"
  shows "x + z = y + z"
proof -
  have "x + z = y + z"
    using assms by (simp add: assms)
  thus ?thesis by auto
qed