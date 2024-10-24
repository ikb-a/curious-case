theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  hence "x - y = (2/y - 2/x)" by (simp add: field_simps)
  hence rearranged: "(x - y) * x * y = 2 * (x - y)"
    using h0 h1 h2 by (auto simp: field_simps)
  have "x * y = 2"
    using h2 rearranged by sos
  thus ?thesis by simp
qed