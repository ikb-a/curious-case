lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "m > 0" "b > 0" "c > 0" "x mod n = a" "x mod m = b"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  and "((x + b)^c) mod m = ((b + b)^c) mod m"
proof -
  have mod_n: "((x + b)^c) mod n = ((x mod n) + b)^c mod n"
    by (smt (verit) mod_add_left_eq power_mod)
  also have "... = (a + b)^c mod n"
    using assms(5) by auto
  finally show "((x + b)^c) mod n = ((a + b)^c) mod n" by auto
  have mod_m: "((x + b)^c) mod m = ((x mod m) + b)^c mod m"
    by (smt (verit) mod_add_left_eq power_mod)
  also have "... = (b + b)^c mod m"
    using assms(6) by auto
  finally show "((x + b)^c) mod m = ((b + b)^c) mod m" by auto
qed