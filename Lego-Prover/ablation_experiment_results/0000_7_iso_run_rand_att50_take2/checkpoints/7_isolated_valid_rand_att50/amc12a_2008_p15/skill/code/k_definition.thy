lemma k_definition:
  fixes k :: nat
  defines "k \<equiv> 2008^2 + 2^2008"
  shows "k = 2008^2 + 2^2008"
  by (simp add: k_def)