theorem numbertheory_sqmod4in01d:
  fixes a :: int
  shows "(a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
proof -
  have "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3" 
    by auto
  moreover {
    assume "a mod 4 = 0"
    have "a^2 mod 4 = (0^2) mod 4" by (smt (verit) \<open>a mod 4 = 0\<close> power_mod)
    hence "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 1"
    have "a^2 mod 4 = (1^2) mod 4" by (smt (verit) \<open>a mod 4 = 1\<close> power_mod)
    hence "a^2 mod 4 = 1" by simp
  }
  moreover {
    assume "a mod 4 = 2"
    have "a^2 mod 4 = (2^2) mod 4" by (smt (verit) \<open>a mod 4 = 2\<close> power_mod)
    hence "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 3"
    have "a^2 mod 4 = (3^2) mod 4" by (smt (verit) \<open>a mod 4 = 3\<close> power_mod)
    hence "a^2 mod 4 = 1" by simp
  }
  then show ?thesis 
    by (metis calculation(1) calculation(2) calculation(3) calculation(4))
qed