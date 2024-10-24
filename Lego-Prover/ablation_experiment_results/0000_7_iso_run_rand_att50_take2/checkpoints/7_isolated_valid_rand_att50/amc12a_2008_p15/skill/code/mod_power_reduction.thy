lemma mod_power_reduction:
  fixes a :: nat and n :: nat and k :: nat
  assumes "n > 0" and "k > 0"
  shows "a^n mod k = (a mod k)^n mod k"
proof -
  have "a^n mod k = (a mod k)^n mod k" using assms by (metis power_mod)
  then show ?thesis by simp
qed