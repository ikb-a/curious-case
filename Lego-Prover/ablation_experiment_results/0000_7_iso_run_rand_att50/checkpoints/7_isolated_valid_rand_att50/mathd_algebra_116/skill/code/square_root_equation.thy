lemma square_root_equation:
  fixes a b :: real
  assumes "a = b"
  shows "sqrt a = sqrt b"
proof -
  have "sqrt a = sqrt b" 
    using assms by (simp add: assms) 
  thus ?thesis by simp
qed