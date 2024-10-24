theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simpler:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11"
proof -
  have "2 * x + (7 - x) = 3" using h1 h0 by simp
  then have "2 * x - x + 7 = 3" by simp
  then have "x + 7 = 3" by simp 
  then have "x = -4" by auto
  then have "e = 7 - (-4)" using h0 by auto
  then have "e = 7 + 4" by simp
  then show "e = 11" by simp
qed