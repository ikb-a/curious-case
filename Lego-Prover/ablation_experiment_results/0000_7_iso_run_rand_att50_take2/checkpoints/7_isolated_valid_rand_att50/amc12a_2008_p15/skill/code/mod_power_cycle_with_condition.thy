lemma mod_power_cycle_with_condition:
  fixes a n m :: nat
  assumes "n > 0" "m > 0"
  shows "a^n mod m = (if a mod m = 0 then 0 else (a mod m)^n mod m)"
proof -
  have "a^n mod m = (a mod m)^n mod m" using assms by (metis power_mod)
  then show ?thesis
  proof (cases "a mod m = 0")
    case True
    then show ?thesis by (metis \<open>a ^ n mod m = (a mod m) ^ n mod m\<close> assms(1) less_numeral_extra(3) mod_0 power_0_left)
  next
    case False
    then show ?thesis by (metis \<open>a ^ n mod m = (a mod m) ^ n mod m\<close>)
  qed
qed