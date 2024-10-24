lemma generalized_k_definition:
  fixes a :: nat and b :: nat
  defines "k \<equiv> a^2 + b^a"
  shows "k = a^2 + b^a"
  by (simp add: k_def)