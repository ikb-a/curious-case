lemma sqrt_limit_general:
  fixes x :: real
  assumes "y = sqrt(x + z)" and "z > 0" and "y > 0"
  shows "x = y^2 - z"
proof -
  have "y^2 = x + z" using assms by auto
  thus ?thesis by auto
qed