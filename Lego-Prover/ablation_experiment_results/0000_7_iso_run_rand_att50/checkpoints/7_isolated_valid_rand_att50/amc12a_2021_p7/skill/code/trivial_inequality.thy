lemma trivial_inequality:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a + b >= 0"
proof -
  have "a + b >= 0 + 0" 
    using assms by auto
  thus ?thesis by simp
qed