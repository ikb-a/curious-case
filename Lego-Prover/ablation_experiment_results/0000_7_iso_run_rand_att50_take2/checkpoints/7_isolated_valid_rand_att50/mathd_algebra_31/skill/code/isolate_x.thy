lemma isolate_x:
  fixes x :: real
  assumes "x + 9 = 81"
  shows "x = 72"
proof -
  have "x = 81 - 9" 
    using assms by simp
  thus ?thesis 
    by simp
qed