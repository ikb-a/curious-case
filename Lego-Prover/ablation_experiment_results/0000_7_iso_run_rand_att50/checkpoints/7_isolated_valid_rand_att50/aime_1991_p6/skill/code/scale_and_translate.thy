lemma scale_and_translate:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "x * a + b = x * c"
proof -
  have "x * (a + b / x) = x * c"
    using assms(2) by auto
  then have "x * a + b = x * c"
    using assms(1) by (simp add: distrib_left)
  thus ?thesis by simp
qed