lemma modulo_squared_equivalence_4:
  fixes a b :: int
  assumes "b = a mod 4"
  shows "a^2 mod 4 = b^2 mod 4"
proof -
  have "a = 4 * (a div 4) + b" using assms by auto
  then have "a^2 = (4 * (a div 4) + b)^2" by simp
  also have "... = (4 * (a div 4))^2 + 2 * (4 * (a div 4)) * b + b^2" by (smt (verit) power2_sum)
  also have "... = 16 * (a div 4)^2 + 8 * (a div 4) * b + b^2" by auto
  finally have "a^2 = 16 * (a div 4)^2 + 8 * (a div 4) * b + b^2" .
  then have "a^2 mod 4 = (16 * (a div 4)^2 + 8 * (a div 4) * b + b^2) mod 4" by simp
  also have "... = (0 + 0 + b^2) mod 4" by (smt (verit) \<open>a\<^sup>2 = 16 * (a div 4)\<^sup>2 + 8 * (a div 4) * b + b\<^sup>2\<close> assms power_mod)
  finally show ?thesis by simp
qed