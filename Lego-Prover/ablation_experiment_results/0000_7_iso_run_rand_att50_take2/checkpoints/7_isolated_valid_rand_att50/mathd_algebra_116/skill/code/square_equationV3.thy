lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "b^2 = (a)^2" 
    using assms by simp
  thus ?thesis 
    by simp
qed