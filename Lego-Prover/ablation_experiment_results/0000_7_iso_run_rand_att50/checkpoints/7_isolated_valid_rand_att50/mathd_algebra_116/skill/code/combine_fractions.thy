lemma combine_fractions:
  fixes a b c d :: real
  assumes "c \<noteq> 0" "d \<noteq> 0"
  shows "(a / c) + (b / d) = (a * d + b * c) / (c * d)"
proof -
  have "a / c + b / d = (a * d) / (c * d) + (b * c) / (c * d)"
    using assms by (simp add: field_simps)
  also have "... = (a * d + b * c) / (c * d)"
    by (simp add: field_simps)
  finally show ?thesis .
qed