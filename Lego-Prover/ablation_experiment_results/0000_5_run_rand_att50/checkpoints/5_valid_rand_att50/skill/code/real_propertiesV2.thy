lemma real_properties:
  fixes x y z :: real
  assumes "x = y + z"
  shows "x^2 = y^2 + 2*y*z + z^2"
proof -
  have "x^2 = (y + z)^2" using assms by simp
  also have "(y + z)^2 = y^2 + 2*y*z + z^2" by sos
  finally show ?thesis by auto
qed