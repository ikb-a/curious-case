lemma induction_principle:
  assumes "P(0)" and "∀n. P(n) ⟹ P(n + 1)"
  shows "∀n. P(n)"