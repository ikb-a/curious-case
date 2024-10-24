lemma mod_power_of_base_with_sum:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "((a + b)^n) mod 10 = ((a mod 10 + b mod 10)^n) mod 10"
proof -
  have "((a + b) mod 10) = ((a mod 10 + b mod 10) mod 10)" using assms by presburger
  then show ?thesis
    using assms by (smt (verit) power_mod)
qed