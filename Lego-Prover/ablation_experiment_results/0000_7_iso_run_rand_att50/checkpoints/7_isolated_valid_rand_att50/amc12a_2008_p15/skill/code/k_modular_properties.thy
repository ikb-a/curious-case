lemma k_modular_properties:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k mod 10 = (2008^2 + 2^2008) mod 10"
    using assms by blast
  also have "... = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
    by eval
  finally show "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10" by blast
qed