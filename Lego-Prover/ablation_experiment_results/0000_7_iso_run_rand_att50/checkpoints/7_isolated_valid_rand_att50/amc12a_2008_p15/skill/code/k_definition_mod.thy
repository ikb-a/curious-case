lemma k_definition_mod:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 100 = (2008^2 mod 100 + 2^2008 mod 100) mod 100"
proof -
  have "k mod 100 = (2008^2 + 2^2008) mod 100" using assms by blast
  also have "... = (2008^2 mod 100 + 2^2008 mod 100) mod 100" by eval
  finally show ?thesis by blast
qed