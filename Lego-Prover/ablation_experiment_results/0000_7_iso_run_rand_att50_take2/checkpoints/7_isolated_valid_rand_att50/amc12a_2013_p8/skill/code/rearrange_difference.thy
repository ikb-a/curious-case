lemma rearrange_difference:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x) * (x - y) / (x - y)" 
  (is "x - y = ?rhs")
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y = (2/y - 2/x) * (x - y) / (x - y)" by auto
  then show ?thesis by simp
qed