lemma mod_add:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "a mod m < m" and "b mod m < m" using assms by auto
  then have "((a mod m) + (b mod m)) < 2 * m" by arith
  have "((a mod m) + (b mod m)) mod m = (a mod m + b mod m) - (m * ((a mod m + b mod m) div m))" 
    by (metis minus_mult_div_eq_mod)
  moreover have "(a + b) mod m = (a + b) - (m * ((a + b) div m))" 
    by (metis minus_div_mult_eq_mod minus_mult_div_eq_mod)
  ultimately show ?thesis 
    by presburger
qed