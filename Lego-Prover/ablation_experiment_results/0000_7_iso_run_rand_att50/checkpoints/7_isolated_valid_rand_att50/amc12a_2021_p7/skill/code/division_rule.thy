lemma division_rule:
  fixes x a b c :: real
  assumes "x > 0" "a * x = b"
  shows "a = b / x"
proof -
  have "a * x = b" by (simp add: assms(2))
  then show ?thesis 
    using assms(1) by (simp add: divide_simps)
qed