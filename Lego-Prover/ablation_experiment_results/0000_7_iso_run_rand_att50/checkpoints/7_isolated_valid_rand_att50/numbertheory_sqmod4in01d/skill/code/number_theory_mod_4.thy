lemma number_theory_mod_4:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
    and "(a mod 4 = 1) \<Longrightarrow> (a^2 mod 4 = 1)"
    and "(a mod 4 = 2) \<Longrightarrow> (a^2 mod 4 = 0)"
    and "(a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 1)"
proof -
  {
    assume "a mod 4 = 0"
    then have "a^2 mod 4 = (0^2) mod 4" by auto
    thus "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 1"
    then have "a^2 mod 4 = (1^2) mod 4" by (smt (verit) power_mod)
    thus "a^2 mod 4 = 1" by simp
  }
  moreover {
    assume "a mod 4 = 2"
    then have "a^2 mod 4 = (2^2) mod 4" by (metis dbl_simps(3) dbl_simps(5) mod_exp_def power_mod push_bit_of_1)
    thus "a^2 mod 4 = 0" by simp
  }
  moreover {
    assume "a mod 4 = 3"
    then have "a^2 mod 4 = (3^2) mod 4" by (smt (verit) power_mod)
    thus "a^2 mod 4 = 1" by simp
  }
qed