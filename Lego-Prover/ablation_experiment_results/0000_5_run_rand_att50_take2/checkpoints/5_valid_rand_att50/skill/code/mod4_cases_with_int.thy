lemma mod4_cases_with_int:
  fixes a :: int
  shows "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
proof -
  obtain b where "a = 4 * b + (a mod 4)" by (metis add.commute mod_eqE mod_mod_trivial)
  hence "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" by auto
  thus ?thesis by auto
qed