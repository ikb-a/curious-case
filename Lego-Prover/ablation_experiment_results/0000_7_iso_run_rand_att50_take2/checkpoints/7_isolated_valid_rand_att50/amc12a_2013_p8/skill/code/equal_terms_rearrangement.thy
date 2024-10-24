lemma equal_terms_rearrangement:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y = (2/y - 2/x)" using algebra_simps by auto
  thus ?thesis by simp
qed