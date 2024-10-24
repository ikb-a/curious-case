lemma k_mod_10_evolved:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k mod 10 = ((2008^2 mod 10) + (2^2008 mod 10)) mod 10"
    using assms square_mod_10_general by presburger
  thus ?thesis by blast
qed