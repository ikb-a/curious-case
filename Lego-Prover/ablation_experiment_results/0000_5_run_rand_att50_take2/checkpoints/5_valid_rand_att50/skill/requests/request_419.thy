lemma inequality_bound:
  fixes N :: nat
  assumes "N < 50"
  shows "N mod 8 = 5 ∧ N mod 6 = 3 ⟹ N ∈ {21, 45}"