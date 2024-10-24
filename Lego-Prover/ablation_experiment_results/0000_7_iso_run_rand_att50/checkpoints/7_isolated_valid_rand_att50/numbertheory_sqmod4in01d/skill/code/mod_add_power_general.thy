lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "(x + b) mod n = (x mod n + b) mod n"
    by (simp add: mod_add_left_eq)
  then have "((x + b)^c) mod n = ((x mod n + b)^c) mod n" by (smt (verit) power_mod)
  also have "... = (a + b)^c mod n"
    using assms(4) by auto
  finally show ?thesis by auto
qed