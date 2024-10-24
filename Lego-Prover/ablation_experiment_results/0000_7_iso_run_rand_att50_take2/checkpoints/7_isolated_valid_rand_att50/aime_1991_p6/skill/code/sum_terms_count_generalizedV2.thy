lemma sum_terms_count_generalized:
  fixes a b c :: nat
  assumes "a = 91" "b = 19" "c = 1"
  shows "a - b + c = 73"
proof -
  have "a - b + c = 91 - 19 + 1" using assms by simp
  thus ?thesis by simp
qed