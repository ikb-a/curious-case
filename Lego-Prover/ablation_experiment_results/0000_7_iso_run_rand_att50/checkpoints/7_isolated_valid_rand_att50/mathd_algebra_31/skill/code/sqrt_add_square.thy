lemma sqrt_add_square:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a^2 + b^2) >= a"
proof -
  have "a^2 >= 0" using assms(1) by simp
  then have "a^2 + b^2 >= a^2" using assms(2) by simp
  then have "sqrt (a^2 + b^2) >= sqrt (a^2)" by auto
  thus ?thesis using assms(1) by simp
qed