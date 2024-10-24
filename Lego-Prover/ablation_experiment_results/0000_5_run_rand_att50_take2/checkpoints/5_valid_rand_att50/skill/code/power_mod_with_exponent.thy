lemma power_mod_with_exponent:
  fixes a b c m :: nat
  assumes "m > 0" "c > 0"
  shows "a^(b*c) mod m = ((a mod m)^(b*c)) mod m"
proof -
  have "a^(b*c) mod m = (a^b)^(c) mod m" by (metis power_mult)
  also have "... = (((a mod m)^b) mod m)^(c) mod m"
    using power_mod_general[of a b m] assms by (metis power_mod)
  also have "... = ((a mod m)^(b*c)) mod m" by (metis calculation power_mod)
  finally show ?thesis by simp
qed