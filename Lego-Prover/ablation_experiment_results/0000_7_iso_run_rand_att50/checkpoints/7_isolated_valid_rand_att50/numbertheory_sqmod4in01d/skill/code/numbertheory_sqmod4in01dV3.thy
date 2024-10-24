theorem numbertheory_sqmod4in01d:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" 
    by auto
  then have "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)" 
    using square_mod_4 by auto
  thus ?thesis by simp
qed