lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + b) mod n) = ((x mod n) + (b mod n)) mod n"
    by presburger
  also have "... = (a + b) mod n"
    using assms(4) by presburger
  finally show ?thesis using power_mod by (smt (verit) \<open>(x + b) mod n = (x mod n + b mod n) mod n\<close> \<open>(x mod n + b mod n) mod n = (a + b) mod n\<close>)
qed