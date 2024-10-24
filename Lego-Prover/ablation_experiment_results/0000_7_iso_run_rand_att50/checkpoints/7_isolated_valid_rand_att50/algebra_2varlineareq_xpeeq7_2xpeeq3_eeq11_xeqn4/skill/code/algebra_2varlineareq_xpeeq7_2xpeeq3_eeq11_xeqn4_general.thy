theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_general:
  fixes x e :: real
  assumes h0 : "x + e = a"  
    and h1 : "2 * x + e = b"  
    and a: "a = 7"  
    and b: "b = 3"  
  shows "e = a + 4 \<and> x = -4"  
proof -
  have eq1: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (a - x) = b" using h1 eq1 by simp
  have eq3: "2 * x - x + a = b" using eq2 by simp
  then have "x + a = b" by simp 
  then have "x = b - a" using a b by simp
  then have "x = 3 - 7" by (metis a b one_plus_BitM or_not_num_neg.simps(2)) 
  then have "x = -4" by simp 
  from eq1 have "e = a - (-4)" using \<open>x = -4\<close> by (metis)
  then have "e = a + 4" by simp
  then show "e = a + 4 \<and> x = -4" by (metis \<open>x = -4\<close> add.commute)
qed