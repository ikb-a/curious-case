lemma power_mod_multi:
  fixes a :: nat and b :: nat and m :: nat and d :: nat
  assumes "m > 0" and "d > 0"
  shows "(a^b * d) mod m = ((a mod m)^b * d) mod m"
proof -
  have "a^b mod m = ((a mod m)^b) mod m" by (metis power_mod assms(1))
  then show ?thesis by (metis mod_mult_left_eq)
qed