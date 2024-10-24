lemma fraction_equivalence:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * b) / a = b"
proof -
  have "a * b / a = b" using assms by (simp add: field_simps)
  thus ?thesis by simp
qed