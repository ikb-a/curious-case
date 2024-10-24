lemma amc12a_2013_p8_simpler:
  fixes x y :: real
  assumes "x > 0" "y > 0" "x \<noteq> y" "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "y + 2/y - x - 2/x = 0" using assms by simp
  hence "y - x = 2/x - 2/y" 
    by (simp add: field_simps)
  have "x * y * (y - x) = 2 * (y - x)" 
    using `y - x = 2/x - 2/y` by sos
  have "x * y = 2" 
    using assms(3) by (metis amc12a_2013_p8_evolved assms(1) assms(2) assms(4) less_numeral_extra(3))
  thus ?thesis by simp
qed