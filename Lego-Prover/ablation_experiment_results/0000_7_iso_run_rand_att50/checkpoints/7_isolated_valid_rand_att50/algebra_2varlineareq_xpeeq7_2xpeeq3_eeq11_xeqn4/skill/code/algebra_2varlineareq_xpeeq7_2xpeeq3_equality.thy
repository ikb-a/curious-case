theorem algebra_2varlineareq_xpeeq7_2xpeeq3_equality:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = 7 - x" using h0 by simp
  have eq2: "2 * x + (7 - x) = 3" using h1 eq1 by simp
  have eq3: "2 * x - x + 7 = 3" using eq2 by simp
  then have "x + 7 = 3" by simp 
  then have "x = 3 - 7" by simp 
  then have "x = -4" by simp 
  from eq1 have "e = 7 - (-4)" by (metis \<open>x = -4\<close>)
  then have "e = 7 + 4" by simp
  then show "e = 11 \<and> x = -4" by (smt (verit) \<open>x = - 4\<close>)
qed