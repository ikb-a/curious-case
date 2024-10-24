lemma mod_power_with_multiple_bases:
  fixes a b :: nat
  assumes "a > 0" "b > 0" "n > 0" "m > 0"
  shows "(a * b)^n mod m = ((a mod m) * (b mod m))^n mod m"
proof -
  have "(a * b)^n mod m = ((a mod m) * (b mod m))^n mod m"
    using assms by (smt (verit) mod_mult_left_eq mod_mult_right_eq mod_power_with_base mult_pos_pos power_mod)
  thus ?thesis by simp
qed