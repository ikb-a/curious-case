theorem amc12a_2013_p8_simplified:
  fixes x y :: real
  assumes h0 : "x > 0"
    and h1 : "y > 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  then have "x - y = (2/y - 2/x)" by (simp add: field_simps)
  then have "(x - y) * x * y = 2 * (x - y)" 
    using h0 h1 h2 by (auto simp: field_simps)
  thus ?thesis by (metis amc12a_2013_p8_evolved h0 h1 h2 h3 less_numeral_extra(3))
qed