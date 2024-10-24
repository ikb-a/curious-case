lemma product_of_reciprocals:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "(1 / a) * (1 / b) = 1 / (a * b)"
proof -
  have "(1 / a) * (1 / b) = 1 / (a * b)" by (simp add: assms)
  thus ?thesis by simp
qed