theorem mod_power_sum:
  fixes x y n c :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b"
  shows "((x + y)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + y)^c) mod n = (((x mod n) + (y mod n))^c) mod n"
    by (smt (verit) mod_add_left_eq mod_add_right_eq power_mod)
  also have "... = ((a + b)^c) mod n"
    using assms by auto
  finally show ?thesis by auto
qed