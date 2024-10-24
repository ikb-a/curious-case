lemma k_mod_10:
  fixes k :: nat
  assumes "k = 2008^2 + 2^2008"
  shows "k mod 10 = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
proof -
  have "k mod 10 = (2008^2 + 2^2008) mod 10"
    using assms by blast
  also have "... = (2008^2 mod 10 + 2^2008 mod 10) mod 10"
    by (metis (no_types, lifting) add.commute mod_add_eq mod_eq_0_iff_dvd)
  finally show ?thesis by blast
qed