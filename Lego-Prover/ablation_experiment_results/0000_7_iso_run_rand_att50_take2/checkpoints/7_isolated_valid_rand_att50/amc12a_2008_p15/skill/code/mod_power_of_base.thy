lemma mod_power_of_base:
  fixes a :: nat
  fixes n :: nat
  assumes "a > 0"
  shows "a^n mod k = (a mod k)^n mod k"
proof -
  have "a^n mod k = (a mod k)^n mod k"
    by (metis power_mod)
  then show ?thesis by simp
qed