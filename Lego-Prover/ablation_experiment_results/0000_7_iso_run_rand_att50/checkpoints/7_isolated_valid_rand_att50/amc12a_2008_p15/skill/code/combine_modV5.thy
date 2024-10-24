lemma combine_mod:
  fixes a b :: nat
  assumes "a mod 10 = x" "b mod 10 = y"
  shows "(a + b) mod 10 = (x + y) mod 10"
proof -
  let ?m_a = "a mod 10"
  let ?m_b = "b mod 10"
  have "a = 10 * (a div 10) + ?m_a" using assms(1) by auto
  have "b = 10 * (b div 10) + ?m_b" using assms(2) by auto
  have "a + b = (10 * (a div 10) + ?m_a) + (10 * (b div 10) + ?m_b)" by simp
  then have "a + b = 10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)" by simp
  also have "... mod 10 = (?m_a + ?m_b) mod 10" by (metis mod_mult_self4)
  have "?m_a = x" and "?m_b = y" using assms by auto
  thus ?thesis using `?m_a = x` `?m_b = y` by (metis mod_add_cong mod_add_eq)
qed