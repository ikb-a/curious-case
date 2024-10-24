lemma mod_power_general:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof -
  have "a mod m = a - (m * (a div m))" by (metis minus_div_mult_eq_mod minus_mult_div_eq_mod)
  then have "a^n mod m = (a - (m * (a div m)))^n mod m" by (metis minus_mult_div_eq_mod power_mod)
  thus ?thesis using assms by (metis power_mod)
qed