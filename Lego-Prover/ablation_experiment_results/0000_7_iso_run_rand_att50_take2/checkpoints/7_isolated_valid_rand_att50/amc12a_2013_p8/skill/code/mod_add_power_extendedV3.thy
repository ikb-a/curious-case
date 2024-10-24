lemma mod_add_power_extended:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b)^c + d) mod n = (((a + b)^c) + d) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c mod n) + d) mod n"
    by presburger
  also have "... = ((a + b)^c + d) mod n"
  proof -
    have "((x + b)^c mod n) = ((x mod n + b)^c mod n)"
      by (smt (verit) mod_add_left_eq power_mod)
    also have "... = ((a + b)^c mod n)"
      using assms(5) by auto
    finally show ?thesis by presburger
  qed
  finally show ?thesis by auto
qed