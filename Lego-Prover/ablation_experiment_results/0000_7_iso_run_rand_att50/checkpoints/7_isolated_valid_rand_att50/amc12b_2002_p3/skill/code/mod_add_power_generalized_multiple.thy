lemma mod_add_power_generalized_multiple:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  and "((x + b) * (x + b)) mod n = ((a + b) * (a + b)) mod n"
proof -
  have "((x + b)^c) mod n = ((x mod n + b) mod n)^c mod n"
    by (metis mod_add_left_eq power_mod)
  also have "... = ((a + b) mod n)^c mod n"
    using assms(4) by auto
  also have "... = (a + b)^c mod n"
    by (metis power_mod)
  finally show "((x + b)^c) mod n = ((a + b)^c) mod n" by auto
  have "((x + b) * (x + b)) mod n = ((x mod n + b) mod n * (x mod n + b) mod n) mod n"
    by (smt (verit) bits_mod_div_trivial mod_add_left_eq mod_eq_self_iff_div_eq_0 mod_mult_eq mod_mult_left_eq)
  also have "... = ((a + b) * (a + b)) mod n"
    using assms(4) by (metis add.commute mod_mod_trivial mod_mult_left_eq)
  finally show "((x + b) * (x + b)) mod n = ((a + b) * (a + b)) mod n" by auto
qed