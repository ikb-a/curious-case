lemma mod_exp_identity:
  fixes a b n :: nat
  assumes "a > 0" "b > 0" "n > 0"
  shows "(a * b)^n mod 10 = ((a mod 10) * (b mod 10))^n mod 10"
proof -
  have "((a * b)^n mod 10) = (a mod 10 * b mod 10)^n mod 10"
    by (metis mod_mult_left_eq power_mod)
  thus ?thesis using assms by (smt (verit) mod_mult_right_eq power_mod)
qed