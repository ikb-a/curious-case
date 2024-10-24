lemma minimum_value:
  fixes x y :: real
  shows "1 \<le> ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 + (x + y)^2 = (x^2 * y^2) - 2 * (x * y) + 1 + (x^2 + 2 * (x * y) + y^2)"
    by sos
  also have "... = (x^2 * y^2) + (x^2) + (y^2) + 1"
    by simp
  finally show ?thesis
    by auto
qed