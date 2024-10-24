lemma rearrange_equation_generic:
  fixes x y :: "'a::field"
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then show ?thesis by (auto simp: field_simps)
qed