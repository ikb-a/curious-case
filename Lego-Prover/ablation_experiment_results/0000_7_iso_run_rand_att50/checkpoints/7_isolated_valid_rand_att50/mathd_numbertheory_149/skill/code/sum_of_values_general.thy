lemma sum_of_values_general:
  fixes x y z :: nat
  assumes "x + y = z"
  shows "y + x = z"
proof -
  have "y + x = z" using assms by (simp add: add.commute)
  thus ?thesis by auto
qed