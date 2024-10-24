lemma mod_add_power_extended:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a" "d mod n = b"
  shows "((x + b)^c + d) mod n = ((a + b)^c + b) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c mod n) + (d mod n)) mod n"
    by presburger
  also have "... = ((x + b)^c mod n + b) mod n"
    using assms(6) by simp
  also have "... = ((x mod n + b)^c mod n + b) mod n"
    using assms(5) by (smt (verit) mod_add_cong mod_add_left_eq power_mod)
  also have "... = ((a + b)^c mod n + b) mod n"
    using assms(5) by (simp add: power_mod)
  finally show ?thesis by presburger
qed