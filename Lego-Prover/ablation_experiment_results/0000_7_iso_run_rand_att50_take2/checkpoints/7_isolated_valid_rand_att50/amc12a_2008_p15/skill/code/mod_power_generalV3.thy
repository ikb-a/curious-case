lemma mod_power_general:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof -
  have "a mod m = a - (a div m) * m" by (metis minus_div_mult_eq_mod)
  then show ?thesis
    by (metis modulo_nat_def power_mod)
qed