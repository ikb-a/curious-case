lemma divide_both_sides:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" 
      and "x \<noteq> 0" 
      and "y \<noteq> 0"
      and "x \<noteq> y"
  shows "1 = 2 / (x * y)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms(1) by simp
  then have "x - y = (2/y - 2/x)" by (simp add: field_simps)
  hence "x - y = (2 * (x - y)) / (x * y)" 
    using assms(2) assms(3) by (simp add: field_simps)
  have "x - y \<noteq> 0" using assms(4) by auto
  then have "1 = 2 / (x * y)" 
    using `x - y = (2 * (x - y)) / (x * y)` 
    by sos
  thus ?thesis by simp
qed