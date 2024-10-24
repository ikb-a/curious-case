lemma mod_power_equivalence:
  fixes a n m :: nat
  assumes "a > 0" "m > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"
proof -
  have "a^n mod m = (a mod m)^n mod m"
    using assms by (metis power_mod)
  thus ?thesis by simp
qed