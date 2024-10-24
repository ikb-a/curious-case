lemma cancel_div_with_nonzero_extended:
  fixes x y a b c d :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c / y" "d \<noteq> 0"
  shows "a * (x * y * d) + b * y * d = c * x * d"
proof -
  have "d * (a + b / x) = (c / y) * d" using assms(3) by (metis mult.commute)
  then have "y * (d * a * x + d * b) = c * x * d" using assms(1,2,4)
    by (auto simp: field_simps)
  then show ?thesis
    by (simp add: field_simps)
qed