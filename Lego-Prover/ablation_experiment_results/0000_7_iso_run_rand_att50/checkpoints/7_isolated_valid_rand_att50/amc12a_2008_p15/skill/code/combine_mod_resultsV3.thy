lemma combine_mod_results:
  fixes x y :: nat
  assumes "x mod 10 = 0" and "y mod 10 = 6"
  shows "(x + y) mod 10 = 6"
proof -
  let ?m_x = "x mod 10"
  let ?m_y = "y mod 10"
  have "?m_x = 0" using assms(1) by simp
  have "?m_y = 6" using assms(2) by simp
  have "x + y = (10 * (x div 10) + ?m_x) + (10 * (y div 10) + ?m_y)"
    by auto
  then have "x + y = 10 * (x div 10 + y div 10) + (?m_x + ?m_y)"
    by (simp add: algebra_simps)
  have "(x + y) mod 10 = (10 * (x div 10 + y div 10) + (?m_x + ?m_y)) mod 10"
    by (auto simp: field_simps)
  also have "... = (?m_x + ?m_y) mod 10"
    by (metis mod_mult_self4)
  also have "... = (0 + 6) mod 10"
    by (simp add: \<open>?m_x = 0\<close> \<open>?m_y = 6\<close>)
  finally show ?thesis
    by simp
qed