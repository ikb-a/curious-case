lemma generalized_rearrangement:
  fixes x y a b :: real
  assumes "x + a/x = y + b/y"
  shows "x - y = (b/y - a/x)"
proof -
  have "x + a/x - (y + b/y) = 0" using assms by simp
  hence "x - y = (b/y - a/x)" by (simp add: field_simps)
  thus ?thesis by simp
qed