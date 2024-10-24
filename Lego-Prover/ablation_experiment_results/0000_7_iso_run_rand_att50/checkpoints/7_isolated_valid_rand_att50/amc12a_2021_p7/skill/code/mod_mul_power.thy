lemma mod_mul_power:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "((b * x)^c) mod n = (b * a)^c mod n"
proof -
  have "(b * x)^c mod n = (b * (x mod n))^c mod n"
    by (smt (verit) mod_mult_right_eq power_mod)
  also have "... = (b * a)^c mod n"
    using assms(3) by auto
  finally show ?thesis by auto
qed