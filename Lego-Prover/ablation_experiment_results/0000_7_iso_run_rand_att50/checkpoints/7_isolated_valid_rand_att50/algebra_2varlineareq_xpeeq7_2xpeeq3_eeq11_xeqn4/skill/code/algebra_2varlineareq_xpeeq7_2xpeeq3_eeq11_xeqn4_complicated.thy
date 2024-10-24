theorem algebra_2varlineareq_xpeeq7_2xpeeq3_eeq11_xeqn4_complicated:
  fixes x e a b :: real
  assumes h0 : "x + e = a"
    and h1 : "2 * x + e = b"
    and h2 : "a = 7" 
    and h3 : "b = 3"
  shows "e = 11 \<and> x = -4"
proof -
  have eq1: "e = a - x" using h0 by (auto simp: field_simps)
  have eq2: "2 * x + (a - x) = b" using h1 eq1 by simp
  have eq3: "2 * x - x + a = b" using eq2 by simp
  then have "x + a = b" by simp 
  then have "x = b - a" using h2 h3 by simp
  then have "x = 3 - 7" by (metis h2 h3 one_plus_BitM or_not_num_neg.simps(2))
  then have "x = -4" by simp 
  from eq1 have "e = a - (-4)" by (metis \<open>x = -4\<close> h2)
  then have "e = 7 + 4" by (metis BitM_plus_one \<open>x = - 4\<close> diff_minus_eq_add eq1 h2 semiring_norm(5))
  then show "e = 11 \<and> x = -4" by (metis \<open>x = - 4\<close> add.commute diff_minus_eq_add numeral_plus_numeral semiring_norm(2) semiring_norm(7))
qed