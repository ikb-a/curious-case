lemma product_inequality:
  fixes x y :: real
  assumes "0 < x" "0 < y"
  shows "x * y > 0"
proof -
  have "x * y > 0" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed