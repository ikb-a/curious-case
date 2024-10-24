lemma manipulate_division:
  fixes x a b c :: real
  assumes "x > 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x = a * x + b" using assms(2) by (smt (verit) assms(1) cancel_div)
  then show ?thesis by simp
qed