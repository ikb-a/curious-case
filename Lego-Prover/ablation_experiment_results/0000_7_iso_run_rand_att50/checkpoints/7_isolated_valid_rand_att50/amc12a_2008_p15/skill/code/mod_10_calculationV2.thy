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
  have "?m_a + ?m_b = 4 + 6" using assms by simp
  thus ?thesis
  proof -
    have "?m_a + ?m_b = 10" by (metis assms(1) assms(2) numeral_eq_Suc numeral_plus_numeral semiring_norm(2) semiring_norm(3) semiring_norm(6) semiring_norm(7))
    also have "... mod 10 = 0" by simp
    finally show ?thesis by (metis \<open>10 mod 10 = 0\<close> \<open>a mod 10 + b mod 10 = 10\<close> assms(1) assms(2) bits_mod_div_trivial mod_add_cong mod_eq_self_iff_div_eq_0)
  qed
qed