lemma mod_square:
  fixes a b m :: int
  assumes "a mod m = b mod m"
  shows "a^2 mod m = b^2 mod m"
  using assms by (simp add: mod_eq_0_iff_dvd)