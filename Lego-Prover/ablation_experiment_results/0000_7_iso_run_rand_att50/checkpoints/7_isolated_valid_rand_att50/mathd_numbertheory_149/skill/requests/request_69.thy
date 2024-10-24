lemma bound_n:
  fixes n :: nat
  assumes "n < 50"
  shows "n mod 8 = 5 ∧ n mod 6 = 3 ⟹ n ∈ {21, 45}"