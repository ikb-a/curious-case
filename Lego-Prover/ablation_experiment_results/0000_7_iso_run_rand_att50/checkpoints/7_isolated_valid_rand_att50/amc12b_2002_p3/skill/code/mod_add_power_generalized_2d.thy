lemma mod_add_power_generalized_2d:
  fixes x y n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" "y mod n = b"
  shows "((x + y)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + y)^c) mod n = ((x mod n + y mod n)^c) mod n"
    using assms(4) assms(5) by (smt (verit) mod_add_left_eq mod_add_right_eq power_mod)
  also have "... = (a + b)^c mod n"
    by (metis add.commute assms(4) assms(5))
  finally show ?thesis by auto
qed