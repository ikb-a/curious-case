lemma mod_add_power_generalized:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + b)^c) mod n = ((x mod n + b) mod n)^c mod n"
    by (metis mod_add_left_eq power_mod)
  also have "... = ((a + b) mod n)^c mod n"
    using assms(4) by auto
  also have "... = (a + b)^c mod n"
    by (metis power_mod)
  finally show ?thesis by auto
qed