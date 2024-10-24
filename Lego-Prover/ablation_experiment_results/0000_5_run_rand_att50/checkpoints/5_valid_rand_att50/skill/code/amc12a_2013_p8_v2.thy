theorem amc12a_2013_p8_v2:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  then have "x - y = (2/y - 2/x)" by auto
  have "x - y \<noteq> 0" using h2 by simp
  have "x * y * (x - y) = 2 * (x - y)" 
    using `x - y = (2/y - 2/x)` by sos
  then have "x * y = 2" 
    using `x - y \<noteq> 0` by sos
  thus ?thesis by simp
qed