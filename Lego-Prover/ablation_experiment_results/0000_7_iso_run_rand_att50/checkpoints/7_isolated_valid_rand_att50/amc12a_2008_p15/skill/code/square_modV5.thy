lemma square_mod:
  fixes k :: nat
  assumes "k mod 10 = 0"
  shows "k^2 mod 10 = 0"
proof -
  have "k = 10 * (k div 10)" using assms by auto
  then have "k^2 = (10 * (k div 10))^2" by simp
  also have "... = 100 * (k div 10)^2" by (simp add: power_mult_distrib)
  finally have "k^2 mod 10 = (100 * (k div 10)^2) mod 10" by simp
  then show ?thesis by (simp add: mod_mult_self4)
qed