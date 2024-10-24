lemma cancel_div_with_nonzero:
  fixes x y a b c :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c / y"
  shows "a * (x * y) + b * y = c * x"
proof -
  have "y * (a * x + b) = c * x" using assms
    by (auto simp: field_simps)
  then show ?thesis
    by (simp add: field_simps)
qed