lemma k_mod_definition:
  fixes k :: nat
  defines "k \<equiv> 2008^2 + 2^2008"
  shows "(k mod 10) = ((2008^2 mod 10) + (2^2008 mod 10)) mod 10"
proof -
  have "k = 2008^2 + 2^2008" by (simp add: k_def)
  then show ?thesis
    by presburger
qed