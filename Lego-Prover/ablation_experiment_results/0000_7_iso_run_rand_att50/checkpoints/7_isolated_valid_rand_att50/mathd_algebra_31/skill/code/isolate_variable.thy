lemma isolate_variable:
  fixes x :: real
  assumes "x + c = d"
  shows "x = d - c"
proof -
  have "x = d - c" 
    using assms by auto
  thus ?thesis by simp
qed