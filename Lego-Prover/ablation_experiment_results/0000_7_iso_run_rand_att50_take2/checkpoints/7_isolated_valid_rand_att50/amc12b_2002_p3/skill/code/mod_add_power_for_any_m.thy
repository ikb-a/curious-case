lemma mod_add_power_for_any_m:
  fixes x a b c m n :: nat
  assumes "n > 0" "b > 0" "m > 0" "x mod n = a"
  shows "((x + m*b)^c) mod n = ((a + m*b)^c) mod n"
proof -
  have "((x + m*b)^c) mod n = (((x + m*b)^c mod n) + 0) mod n" by presburger
  also have "... = (((x mod n) + m*b)^c) mod n" using assms(4) 
    by (smt (verit) calculation mod_add_left_eq power_mod)
  also have "... = ((a + m*b)^c) mod n" 
    by (metis add.commute assms(4) mult.commute)
  finally show ?thesis by auto
qed