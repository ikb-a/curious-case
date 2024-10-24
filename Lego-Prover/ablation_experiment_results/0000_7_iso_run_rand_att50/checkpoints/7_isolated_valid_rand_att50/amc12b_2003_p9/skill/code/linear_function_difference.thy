lemma linear_function_difference:
  fixes m c :: real and f :: "real \<Rightarrow> real"
  assumes "\<forall> x. f x = m * x + c"
    and "f 6 - f 2 = 12"
  shows "f 12 - f 2 = 10 * m"
proof -
  have f_6: "f 6 = m * 6 + c" using assms(1) by simp
  have f_2: "f 2 = m * 2 + c" using assms(1) by simp
  have "f 6 - f 2 = (m * 6 + c) - (m * 2 + c)"
    using f_6 f_2 by simp
  then have "f 6 - f 2 = m * 6 - m * 2 + c - c" by simp
  then have "f 6 - f 2 = m * (6 - 2)" by (simp add: algebra_simps)
  then have "f 6 - f 2 = 4 * m" using assms(2) by simp
  then have "4 * m = 12" by (metis assms(2) dbl_simps(3))
  then have "m = 12 / 4" by (simp add: field_simps)
  then have "m = 3" by simp
  show ?thesis
  proof -
    have f_12: "f 12 = m * 12 + c" using assms(1) by simp
    have "f 12 - f 2 = (m * 12 + c) - (m * 2 + c)"
      using f_12 f_2 by simp
    then have "f 12 - f 2 = m * 12 - m * 2 + c - c"
      by simp
    then have "f 12 - f 2 = m * (12 - 2)" by (simp add: algebra_simps)
    then show ?thesis by (simp add: algebra_simps)
  qed
qed