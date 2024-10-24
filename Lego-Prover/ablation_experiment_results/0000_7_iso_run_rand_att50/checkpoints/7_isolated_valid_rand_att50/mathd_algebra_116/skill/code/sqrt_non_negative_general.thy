lemma sqrt_non_negative_general:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x = sqrt(0 + x)"
proof -
  have "sqrt x = sqrt(0 + x)" by simp
  then show ?thesis by simp
qed