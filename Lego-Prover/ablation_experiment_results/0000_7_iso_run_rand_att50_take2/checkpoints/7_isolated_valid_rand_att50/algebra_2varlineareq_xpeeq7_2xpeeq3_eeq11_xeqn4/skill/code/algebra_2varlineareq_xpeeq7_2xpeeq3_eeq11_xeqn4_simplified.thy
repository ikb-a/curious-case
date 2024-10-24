theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_simplified:
  fixes x e :: real
  assumes h0 : "x + e = 7"
    and h1 : "2 * x + e = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have e_eq: "e = 7 - x" using h0 by (simp)
  have substitution: "2 * x + (7 - x) = 3" using e_eq h1 by simp
  have "x + 7 = 3" using substitution by simp
  then have "x = -4" by simp
  then have "e = 7 - (-4)" using e_eq by simp
  then show ?thesis by (smt (verit) \<open>x = - 4\<close>)
qed