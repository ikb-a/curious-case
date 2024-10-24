lemma mod_mult_power:
  fixes x n a b :: nat
  assumes "n > 0" "x mod n = a" "b > 0"
  shows "((x * b)^c) mod n = ((a * b)^c) mod n"
proof -
  have "((x * b)^c) mod n = ((x mod n * b) mod n)^c mod n"
    by (metis mod_mult_left_eq power_mod)
  also have "... = ((a * b) mod n)^c mod n"
    using assms(2) by auto
  also have "... = (a * b)^c mod n"
    by (metis power_mod)
  finally show ?thesis by auto
qed