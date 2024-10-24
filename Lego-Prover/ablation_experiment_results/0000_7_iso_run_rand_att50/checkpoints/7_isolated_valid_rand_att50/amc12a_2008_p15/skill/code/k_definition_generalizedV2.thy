lemma k_definition_generalized:
  fixes k :: nat
  fixes a b :: nat
  assumes "k = a^2 + b^a"
  shows True
  by simp