lemma power_of_two_mod:
  fixes n :: nat
  shows "n mod 4 = 0 ⟹ (2^n) mod 10 = 6"
  by (simp add: mod_4_cases)