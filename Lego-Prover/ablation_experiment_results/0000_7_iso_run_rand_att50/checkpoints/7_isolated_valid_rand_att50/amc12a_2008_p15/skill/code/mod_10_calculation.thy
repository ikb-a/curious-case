lemma mod_10_calculation:
  fixes a b :: nat
  assumes "a mod 10 = 4" and "b mod 10 = 6"
  shows "(a + b) mod 10 = 0"
proof -
  let ?m_a = "a mod 10"
  let ?m_b = "b mod 10"
  have "a = 10 * (a div 10) + ?m_a" using assms(1) by presburger
  have "b = 10 * (b div 10) + ?m_b" using assms(2) by presburger
  have "a + b = (10 * (a div 10) + ?m_a) + (10 * (b div 10) + ?m_b)"
    by simp
  have "a + b = 10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)"
    by simp
  also have "... mod 10 = (?m_a + ?m_b) mod 10"
    by (metis mod_mult_self4)
  have "?m_a + ?m_b = 4 + 6" using assms by simp
  then have "?m_a + ?m_b = 10" by simp
  thus ?thesis
    by presburger
qed