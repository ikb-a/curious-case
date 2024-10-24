lemma absolute_value_difference:
  fixes a b c :: real
  assumes "abs(a - b) < c"
  shows "b - c < a \<and> a < b + c"
proof -
  have "a - b < c" and "-(a - b) < c" using assms by auto
  then show ?thesis by (auto simp: algebra_simps)
qed