lemma square_modulo_4:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
proof -
  assume "a mod 4 = 0"
  then have "a = 4 * (a div 4)" by auto
  have "a^2 = (4 * (a div 4))^2" by (metis \<open>a = 4 * (a div 4)\<close>)
  also have "... = 16 * (a div 4)^2" by (simp add: power2_eq_square)
  finally have "a^2 = 16 * (a div 4)^2" .
  then have "a^2 mod 4 = (16 * (a div 4)^2) mod 4" by simp
  also have "... = 0 mod 4" by (simp add: mod_mult_right_eq)
  finally show "a^2 mod 4 = 0" by simp
qed