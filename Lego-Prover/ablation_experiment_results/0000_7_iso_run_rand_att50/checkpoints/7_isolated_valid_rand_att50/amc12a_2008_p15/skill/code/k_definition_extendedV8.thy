lemma k_definition_extended:
  fixes k :: nat and d :: nat
  assumes "d > 0" and "k = 2008^2 + d^2008"
  shows True
  by simp