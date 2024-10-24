lemma k_definition_extended:
  fixes k :: nat
  assumes "k = a^2 + b^c" and "a > 0" and "b > 0" and "c > 0"
  shows True
  by simp