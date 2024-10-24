lemma mod_add_power_with_properties:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" 
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "x mod n = a" using assms(4) by assumption
  have "(x + b) mod n = (a + b) mod n" using assms(1) by (smt (verit) assms(4) mod_add_left_eq)
  then have "((x + b)^c) mod n = ((a + b)^c) mod n"
    by (metis mod_eq_0_iff_dvd power_mod)
  thus ?thesis by auto
qed