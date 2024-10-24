lemma mod_power_exponentiation:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "(a mod 10)^n mod 10 = a^n mod 10"
proof -
  have "a^n mod 10 = (a mod 10)^n mod 10" using assms by (metis power_mod)
  then show ?thesis by simp
qed