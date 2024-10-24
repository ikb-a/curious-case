lemma mod_square:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
proof -
  assume "a mod 4 = 0"
  then obtain r where r_def: "a = 4 * r" by auto
  have "a^2 = (4 * r)^2" by (simp add: r_def)
  also have "... = 16 * r^2" by (simp add: power2_eq_square)
  finally have "a^2 mod 4 = (16 * r^2) mod 4" by simp
  have "16 * r^2 mod 4 = 0" by (simp add: mod_mult_eq)
  thus "a^2 mod 4 = 0" by (metis \<open>a mod 4 = 0\<close> mod_mult_cong mod_mult_self2_is_0 mod_self power2_eq_square)
qed