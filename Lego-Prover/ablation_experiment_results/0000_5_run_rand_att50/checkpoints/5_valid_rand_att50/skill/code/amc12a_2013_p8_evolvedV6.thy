theorem amc12a_2013_p8_evolved:
  fixes x y :: real
  assumes h0 : "x \<noteq> 0"
    and h1 : "y \<noteq> 0"
    and h2 : "x \<noteq> y"
    and h3 : "x + 2/x = y + 2/y"
  shows "x * y = 2"
proof -
  have "x + 2/x = y + 2/y" using h3 by simp
  hence rearranged: "x - y = (2/y - 2/x)" by (simp add: field_simps)
  have "x * y * (x - y) = 2 * (x - y)" 
  proof (cases "x - y = 0")
    case True
    then have "x = y" by simp
    with h2 show ?thesis by contradiction
  next
    case False
    then show ?thesis using rearranged by sos
  qed
  thus ?thesis using h2 by sos
qed