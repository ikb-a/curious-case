lemma manipulate_division_complex:
  fixes x a b c d :: complex
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "c * x - b = a * x"
proof -
  have "c * x = a * x + b" using assms(2) by (smt (verit) assms(1) cancel_div_general)
  then show ?thesis by simp
qed