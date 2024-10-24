lemma mod_add_power_general:
  fixes x a b n e :: nat
  assumes "n > 0" "b > 0" "e > 0" 
          "x mod n = a"
  shows "((x + b)^e) mod n = ((a + b)^e) mod n"
proof -
  have "((x + b)^e) mod n = ((x mod n + b)^e) mod n" 
    using assms(4) by (smt (verit) mod_add_left_eq power_mod)
  also have "... = ((a + b)^e) mod n" 
    using assms(4) by (simp add: power_mod)
  finally show ?thesis by simp
qed