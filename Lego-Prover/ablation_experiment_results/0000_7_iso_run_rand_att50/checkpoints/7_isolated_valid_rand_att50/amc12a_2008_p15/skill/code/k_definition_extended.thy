lemma k_definition_extended:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k > 0"
  by (simp add: assms)