lemma square_modulo_properties:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
    and "(a mod 4 = 1) \<Longrightarrow> (a^2 mod 4 = 1)"
    and "(a mod 4 = 2) \<Longrightarrow> (a^2 mod 4 = 0)"
    and "(a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 1)"
proof -
  {
    assume "a mod 4 = 0"
    have "a^2 mod 4 = (0^2) mod 4" by (smt (verit) \<open>a mod 4 = 0\<close> power_mod)
    then show "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)" by simp
  }
  {
    assume "a mod 4 = 1"
    have "a^2 mod 4 = (1^2) mod 4" by (smt (verit) \<open>a mod 4 = 1\<close> power_mod)
    then show "(a mod 4 = 1) \<Longrightarrow> (a^2 mod 4 = 1)" by simp
  }
  {
    assume "a mod 4 = 2"
    have "a^2 mod 4 = (2^2) mod 4" by (smt (verit) \<open>a mod 4 = 2\<close> power_mod)
    then show "(a mod 4 = 2) \<Longrightarrow> (a^2 mod 4 = 0)" by simp
  }
  {
    assume "a mod 4 = 3"
    have "a^2 mod 4 = (3^2) mod 4" by (smt (verit) \<open>a mod 4 = 3\<close> power_mod)
    then show "(a mod 4 = 3) \<Longrightarrow> (a^2 mod 4 = 1)" by simp
  }
qed