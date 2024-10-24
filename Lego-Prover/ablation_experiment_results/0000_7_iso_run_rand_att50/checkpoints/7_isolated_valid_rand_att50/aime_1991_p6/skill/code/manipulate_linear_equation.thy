lemma manipulate_linear_equation:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x = a * x + b"
proof -
  have "c * x = a * x + b" using assms by (auto simp: field_simps)
  thus ?thesis by simp
qed