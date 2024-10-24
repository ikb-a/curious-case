lemma mod_10_of_power:
  fixes a :: nat
  assumes "a > 0"
  shows "a^n mod 10 = (a mod 10)^n mod 10"
proof -
  have "a^n mod 10 = (a mod 10)^n mod 10" using assms
    by (metis power_mod)
  thus ?thesis by simp
qed