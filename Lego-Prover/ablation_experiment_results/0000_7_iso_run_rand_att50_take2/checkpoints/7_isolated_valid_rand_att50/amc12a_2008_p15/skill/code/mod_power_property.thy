lemma mod_power_property:
  fixes a :: nat
  assumes "a > 0" and "n > 0"
  shows "(a mod 10)^n mod 10 = a^n mod 10"
proof -
  have "a^n mod 10 = (a mod 10)^n mod 10" by (metis power_mod)
  then show ?thesis by simp
qed