lemma mod_power:
  fixes a n :: nat
  assumes "n > 0"
  shows "a^n mod n = (a mod n)^n mod n"
proof -
  have "a^n mod n = ((a mod n) + (a div n * n))^n mod n"
    using assms by auto
  also have "... = ((a mod n)^n + (a div n * n)^n) mod n"
    by (metis assms calculation less_numeral_extra(3) mod_add_cong mod_mult_div_eq mod_mult_eq mod_mult_self1_is_0 mult.commute mult_0_right old.nat.exhaust power_Suc2 power_mod verit_sum_simplify)
  also have "... = (a mod n)^n mod n"
    using assms by (metis calculation power_mod)
  finally show ?thesis by auto
qed