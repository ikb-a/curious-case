theorem numbertheory_sqmod4in01d:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" 
    by auto
  then show ?thesis 
    by (metis square_modulo_properties(1) square_modulo_properties(2) 
                square_modulo_properties(3) square_modulo_properties(4))
qed