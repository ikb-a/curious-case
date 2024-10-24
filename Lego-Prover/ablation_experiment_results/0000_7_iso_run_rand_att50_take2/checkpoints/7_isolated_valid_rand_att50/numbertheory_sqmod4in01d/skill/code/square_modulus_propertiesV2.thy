theorem square_modulus_properties:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3)"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" 
    by auto
  thus ?thesis by auto
qed