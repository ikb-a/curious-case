lemma square_mod_4:
  fixes a :: int
  shows "(a mod 4 = 0) \<or> (a mod 4 = 1) \<or> (a mod 4 = 2) \<or> (a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 0) \<or> (a^2 mod 4 = 1)"
proof -
  assume "a mod 4 = 0 \<or> a mod 4 = 1 \<or> a mod 4 = 2 \<or> a mod 4 = 3"
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
  ultimately show ?thesis 
    by auto
qed