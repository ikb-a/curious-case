lemma mod_power_cycle:
  fixes a n m :: nat
  assumes "a > 0" "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof -
  have "a^n mod m = ((a mod m) + k * m)^n mod m" for k :: nat
    by (smt (verit) mod_mod_trivial mod_mult_self1 power_mod)
  then show ?thesis
    by (metis power_mod)
qed