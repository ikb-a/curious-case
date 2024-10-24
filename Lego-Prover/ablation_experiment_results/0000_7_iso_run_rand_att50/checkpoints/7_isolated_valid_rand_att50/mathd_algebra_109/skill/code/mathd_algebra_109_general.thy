theorem mathd_algebra_109_general:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = c"  
    and h1 : "a = d"                
  shows "b = (c - 3 * d) / 2"       
proof -
  have "3 * a + 2 * b = c" using h0 by simp
  have "3 * d + 2 * b = c" using h1 by (metis h0)
  then show ?thesis by auto
qed