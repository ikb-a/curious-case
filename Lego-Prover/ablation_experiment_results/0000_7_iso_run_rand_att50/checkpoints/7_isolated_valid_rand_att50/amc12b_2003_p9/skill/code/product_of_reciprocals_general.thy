lemma product_of_reciprocals_general:
  fixes a b :: real
  assumes "a > 0" "b > 0" "c > 0"
  shows "(1 / a) * (1 / b) * (1 / c) = 1 / (a * b * c)"
proof -
  have "(1 / a) * (1 / b) * (1 / c) = (1 / (a * b)) * (1 / c)"
    by (simp add: assms)
  also have "... = 1 / (a * b * c)"
    by auto
  finally show ?thesis by simp
qed