lemma mod_square_cases:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3)"
proof -
  have "0 \<le> a mod 4" and "a mod 4 < 4" by auto
  hence "a mod 4 < 4" by auto
  then show ?thesis using \<open>0 \<le> a mod 4\<close> by auto
qed