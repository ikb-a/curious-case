lemma manipulate_division_with_addition:
  fixes x a b c d :: "'a::field"
  assumes "x \<noteq> 0" "a + b / x = c" "d \<noteq> 0"
  shows "d * (c * x - b) = d * (a * x)"
proof -
  have "c * x - b = a * x" using cancel_div_advanced assms(1, 2) by auto
  then have "d * (c * x - b) = d * (a * x)" by simp
  thus ?thesis by simp
qed