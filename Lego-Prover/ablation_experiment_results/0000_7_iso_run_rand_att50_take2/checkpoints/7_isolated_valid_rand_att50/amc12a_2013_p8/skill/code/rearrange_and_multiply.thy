lemma rearrange_and_multiply:
  fixes x y a b :: real
  assumes "x + a/x = y + b/y"
  shows "x - y = (b/y - a/x)"
proof -
  have "x + a/x - (y + b/y) = 0" using assms by simp
  thus ?thesis by (simp add: algebra_simps)
qed