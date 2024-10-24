lemma square_root_positive:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = (if a = 0 then 0 else sqrt a)" by auto
  moreover {
    assume "a = 0"
    hence "sqrt a = 0" by simp
  }
  ultimately show ?thesis using assms by auto
qed