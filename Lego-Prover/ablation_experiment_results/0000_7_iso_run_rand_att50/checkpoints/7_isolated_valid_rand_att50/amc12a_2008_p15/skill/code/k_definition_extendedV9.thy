lemma k_definition_extended:
  fixes k :: nat
  assumes "k = n^2 + 2^n" and "n > 0"
  shows "k = n^2 + 2^n"
  by (metis assms(1))