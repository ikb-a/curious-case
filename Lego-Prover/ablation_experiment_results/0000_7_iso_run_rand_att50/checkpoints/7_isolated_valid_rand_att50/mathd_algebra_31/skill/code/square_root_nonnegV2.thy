lemma square_root_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = (if a = 0 then 0 else sqrt (a))" by auto
  then show ?thesis using assms by auto
qed