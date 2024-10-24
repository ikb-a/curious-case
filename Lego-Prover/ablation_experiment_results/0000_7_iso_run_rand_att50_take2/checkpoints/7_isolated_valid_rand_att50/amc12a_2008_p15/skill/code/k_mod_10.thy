lemma k_mod_10:
  fixes k :: nat
  defines "k \<equiv> 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k = 2008^2 + 2^2008" using k_def by simp
  also have "... mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10" 
    by eval
  finally show ?thesis by blast
qed