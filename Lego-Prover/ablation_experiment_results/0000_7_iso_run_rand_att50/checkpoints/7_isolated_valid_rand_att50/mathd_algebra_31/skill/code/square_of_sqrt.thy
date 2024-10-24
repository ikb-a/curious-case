lemma square_of_sqrt:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a = b \<Longrightarrow> a = b^2"
proof -
  assume "sqrt a = b"
  then have "a = b^2" using assms by auto
  thus ?thesis by simp
qed