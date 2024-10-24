lemma mod_power_with_addition:
  fixes a b n :: nat
  assumes "n > 0" "b > 0"
  shows "(a + b)^n mod n = ((a mod n + b mod n) mod n)^n mod n"
proof -
  have "((a + b) mod n) = ((a mod n + b mod n) mod n)" using assms by presburger
  hence "(a + b)^n mod n = ((a mod n + b mod n) mod n)^n mod n" using assms by (metis power_mod)
  thus ?thesis by auto
qed