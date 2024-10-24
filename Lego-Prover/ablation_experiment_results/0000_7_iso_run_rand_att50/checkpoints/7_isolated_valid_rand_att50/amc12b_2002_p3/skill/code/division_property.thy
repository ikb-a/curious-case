lemma division_property:
  fixes a b c x :: real
  assumes "x > 0" "a + b / x = c"
  shows "b = x * (c - a)"
proof -
  have "b / x = c - a" using assms by simp
  then show ?thesis using assms(1) by (auto simp: field_simps)
qed