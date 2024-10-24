lemma mod_power_add:
  fixes a n m :: nat
  assumes "m > 0" "n > 0"
  shows "(a + b) ^ n mod m = ((a mod m) + (b mod m)) ^ n mod m"
proof -
  have "((a + b) mod m) = ((a mod m) + (b mod m)) mod m" by presburger
  then show ?thesis using assms by (metis power_mod)
qed