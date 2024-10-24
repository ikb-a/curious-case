lemma add_modulo:
  fixes a b :: nat
  shows "(a mod 10 + b mod 10) mod 10 = (a + b) mod 10"
proof -
  have "a mod 10 < 10" and "b mod 10 < 10" by auto
  then have "a mod 10 + b mod 10 < 20" by auto
  hence "(a mod 10 + b mod 10) mod 10 = a mod 10 + b mod 10 - 10 * ((a mod 10 + b mod 10) div 10)" 
    by (metis minus_div_mult_eq_mod minus_mult_div_eq_mod)
  have "(a + b) mod 10 = (a mod 10 + b mod 10) mod 10"
    by presburger
  thus ?thesis by (simp add: mod_add_eq)
qed