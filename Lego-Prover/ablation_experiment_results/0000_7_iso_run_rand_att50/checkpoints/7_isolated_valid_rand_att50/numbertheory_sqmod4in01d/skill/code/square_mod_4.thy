lemma square_mod_4:
  fixes a :: int
  shows "(a mod 4 = 0 \<longrightarrow> a^2 mod 4 = 0) \<and>
         (a mod 4 = 1 \<longrightarrow> a^2 mod 4 = 1) \<and>
         (a mod 4 = 2 \<longrightarrow> a^2 mod 4 = 0) \<and>
         (a mod 4 = 3 \<longrightarrow> a^2 mod 4 = 1)"
proof -
  {
    assume "a mod 4 = 0"
    hence "a^2 mod 4 = (0^2) mod 4" by auto
  }
  moreover {
    assume "a mod 4 = 1"
    hence "a^2 mod 4 = (1^2) mod 4" by (smt (verit) power_mod)
  }
  moreover {
    assume "a mod 4 = 2"
    hence "a^2 mod 4 = (2^2) mod 4" by (metis dbl_simps(3) dbl_simps(5) mod_exp_def power_mod push_bit_of_1)
  }
  moreover {
    assume "a mod 4 = 3"
    hence "a^2 mod 4 = (3^2) mod 4" by (smt (verit) power_mod)
  }
  ultimately show ?thesis by auto
qed