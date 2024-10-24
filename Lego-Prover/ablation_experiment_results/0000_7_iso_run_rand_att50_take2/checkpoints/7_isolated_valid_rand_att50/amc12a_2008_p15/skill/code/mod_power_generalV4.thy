lemma mod_power_general:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof -
  have "(a mod m) ^ n mod m = ((a - (a div m) * m) ^ n) mod m"
    by (metis minus_div_mult_eq_mod)
  also have "... = (a ^ n) mod m" using assms by (metis minus_div_mult_eq_mod power_mod)
  finally show ?thesis by simp
qed