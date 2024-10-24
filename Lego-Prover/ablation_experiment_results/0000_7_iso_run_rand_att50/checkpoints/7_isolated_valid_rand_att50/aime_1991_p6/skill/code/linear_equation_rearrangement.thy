lemma linear_equation_rearrangement:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a = c - b / x"
proof -
  have "c - b / x = a" using assms by (auto simp: field_simps)
  thus ?thesis by simp
qed