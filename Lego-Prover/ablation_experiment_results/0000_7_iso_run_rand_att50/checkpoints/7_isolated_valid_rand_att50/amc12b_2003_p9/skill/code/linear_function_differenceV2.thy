lemma linear_function_difference:
  fixes m c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = m * x + c"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 10 * m"
proof -
  have f6: "f 6 = m * 6 + c" using assms(1) by simp
  have f2: "f 2 = m * 2 + c" using assms(1) by simp
  from assms(2) have "f 6 - f 2 = 12" by simp
  then have "m * 6 + c - (m * 2 + c) = 12" using f6 f2 by simp
  hence "m * 6 - m * 2 = 12" by simp
  thus "f 12 - f 2 = 10 * m" 
  proof -
    have f12: "f 12 = m * 12 + c" using assms(1) by simp
    have "f 12 - f 2 = (m * 12 + c) - (m * 2 + c)"
      using f12 f2 by simp
    thus ?thesis by simp
  qed
qed