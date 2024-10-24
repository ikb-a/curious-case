lemma mod_power_equivalence:
  fixes a :: nat and n :: nat and k :: nat
  assumes "n > 0" and "k > 0"
  shows "(a mod k)^n mod k = a^n mod k"
proof -
  have "a^n mod k = (a mod k)^n mod k"
    using assms by (metis power_mod)
  thus ?thesis by simp
qed