lemma mod_square:
  fixes a :: int
  shows "(a mod 4 = 0) \<Longrightarrow> (a^2 mod 4 = 0)"
proof -
  assume "a mod 4 = 0"
  then obtain k where "a = 4 * k" by auto
  then have "a^2 = (4 * k)^2" 
    by auto
  hence "a^2 = 16 * k^2" 
    by (simp add: power2_eq_square)
  then have "a^2 mod 4 = (16 * k^2) mod 4" 
    by auto
  also have "(16 * k^2) mod 4 = 0" 
    by (simp add: mod_mult_self2) 
  finally show "a^2 mod 4 = 0" .
qed