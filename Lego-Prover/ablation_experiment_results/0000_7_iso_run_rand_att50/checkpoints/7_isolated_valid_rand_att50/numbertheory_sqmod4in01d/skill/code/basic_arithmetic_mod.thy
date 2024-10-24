lemma basic_arithmetic_mod:
  fixes a b m :: int
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  have "a mod m = a - m * (a div m)" by (auto simp: field_simps)
  have "b mod m = b - m * (b div m)" by (auto simp: field_simps)
  then have "((a mod m) + (b mod m)) mod m = ((a - m * (a div m)) + (b - m * (b div m))) mod m"
    by (metis minus_mult_div_eq_mod)
  also have "... = (a + b - m * ((a div m) + (b div m))) mod m"
    by (simp add: algebra_simps)
  finally show ?thesis 
    by presburger
qed