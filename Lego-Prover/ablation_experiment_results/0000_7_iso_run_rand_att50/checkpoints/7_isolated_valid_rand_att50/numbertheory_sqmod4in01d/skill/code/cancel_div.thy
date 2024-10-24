lemma cancel_div:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by (simp add: field_simps)
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  have "x * (b / x) = b"
    using assms(1) by (simp add: divide_simps)
  then have "x * a + b = c * x"
    by (smt (verit) \<open>x * a + x * (b / x) = c * x\<close>)
  thus ?thesis by sos
qed