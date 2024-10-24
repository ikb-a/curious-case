theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0" "y \<noteq> 0"
    and h1 : "x \<noteq> y"
    and h2 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h2 by simp
  hence "x - y = (2/y - 2/x)" by (simp add: field_simps)
  have "x * y * (x - y) = 2 * (x - y)" 
    using `x + 2/x = y + 2/y` by sos
  then show "x * y = 2" 
    using h1 by sos
qed