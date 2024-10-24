lemma mod_power:
  fixes a n :: nat
  assumes "n > 0"
  shows "a^n mod n = (a mod n)^n mod n"
proof -
  have "(a^n mod n) = ((a mod n)^n) mod n" using assms by (metis power_mod)
  thus ?thesis by auto
qed