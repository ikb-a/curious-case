lemma square_properties_mod_4:
  fixes a :: int
  shows "a^2 mod 4 = 0 \<or> a^2 mod 4 = 1"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" 
    by auto
  moreover {
    assume "a mod 4 = 0"
    then have "a^2 mod 4 = (0^2) mod 4" by auto
    hence "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 1"
    then have "a^2 mod 4 = (1^2) mod 4" by (smt (verit) power_mod)
    hence "a^2 mod 4 = 1" by simp
  }
  moreover {
    assume "a mod 4 = 2"
    then have "a^2 mod 4 = (2^2) mod 4" by (smt (verit) power_mod)
    hence "a^2 mod 4 = 4 mod 4" by simp
    hence "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 3"
    then have "a^2 mod 4 = (3^2) mod 4" by (smt (verit) power_mod)
    hence "a^2 mod 4 = 9 mod 4" by simp
    hence "a^2 mod 4 = 1" by simp
  }
  ultimately show ?thesis by auto
qed