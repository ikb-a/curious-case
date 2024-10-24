lemma isolate_variable:
  fixes x y :: real
  assumes "x + y = c"
  shows "y = c - x"
proof -
  have "y = c - x" 
  proof -
    from assms have "y = c - x" by auto
    thus ?thesis by assumption
  qed
  thus ?thesis by auto
qed