lemma sum_of_four_numbers:
  fixes a b c d :: nat
  assumes "a = 21" "b = 45" "c = 5" "d = 10"
  shows "a + b + c + d = 81"
proof -
  have "a + b + c + d = 21 + 45 + 5 + 10" using assms by simp
  thus ?thesis by simp
qed