lemma isolate_variable:
  fixes x :: real
  assumes "x + c = d"
  shows "x = d - c"
proof -
  have "x = d - c"
  proof -
    from assms show ?thesis 
      by (simp add: add_diff_eq)
  qed
  thus ?thesis by simp
qed