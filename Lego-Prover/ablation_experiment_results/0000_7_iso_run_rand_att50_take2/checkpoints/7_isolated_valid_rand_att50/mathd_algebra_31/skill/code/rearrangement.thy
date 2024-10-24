lemma rearrangement:
  fixes a b c :: real
  assumes "a = b + c"
  shows "b = a - c"
proof -
  have "b = a - c" 
    using assms by auto
  thus ?thesis by simp
qed