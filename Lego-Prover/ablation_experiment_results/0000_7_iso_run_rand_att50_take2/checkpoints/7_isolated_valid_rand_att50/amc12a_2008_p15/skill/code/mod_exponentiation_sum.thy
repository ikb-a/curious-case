lemma mod_exponentiation_sum:
  fixes x y n a b :: nat
  assumes "n > 0" "x mod n = a" "y mod n = b" "b > 0"
  shows "((x + y)^b) mod n = ((a + b)^b) mod n"
proof -
  have "((x + y)^b) mod n = ((x mod n + y mod n)^b) mod n" using assms by (smt (verit) mod_add_left_eq mod_add_right_eq power_mod)
  also have "... = (a + b)^b mod n" using assms(2, 3) by auto
  finally show ?thesis .
qed