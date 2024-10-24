lemma mod_add_power_extended_general:
  fixes x n a b c d e :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "e > 0" 
          "x mod n = a" "d mod n = b" "e mod n = c"
  shows "((x + b)^e + d) mod n = ((a + b)^e + b) mod n"
proof -
  have "((x + b)^e + d) mod n = (((x + b)^e mod n) + (d mod n)) mod n"
    by presburger
  also have "... = ((x + b)^e mod n + b) mod n"
    using assms(7) by simp
  also have "... = ((x mod n + b)^e mod n + b) mod n"
    using assms(6) by (smt (verit) mod_add_cong mod_add_left_eq power_mod)
  also have "... = ((a + b)^e mod n + b) mod n"
    using assms(6) by (simp add: power_mod)
  finally show ?thesis by presburger
qed