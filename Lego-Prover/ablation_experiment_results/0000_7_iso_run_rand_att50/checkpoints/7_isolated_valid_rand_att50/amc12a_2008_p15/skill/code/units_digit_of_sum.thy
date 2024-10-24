lemma units_digit_of_sum:
  fixes x y :: nat
  shows "(x + y) mod 10 = ((x mod 10) + (y mod 10)) mod 10"
proof -
  let ?m_x = "x mod 10"
  let ?m_y = "y mod 10"
  have "x = 10 * (x div 10) + ?m_x" by auto
  have "y = 10 * (y div 10) + ?m_y" by auto
  have "x + y = (10 * (x div 10) + ?m_x) + (10 * (y div 10) + ?m_y)" 
    by (metis \<open>x = 10 * (x div 10) + ?m_x\<close> \<open>y = 10 * (y div 10) + ?m_y\<close>)
  then have "x + y = 10 * ((x div 10) + (y div 10)) + (?m_x + ?m_y)" 
    by (simp add: algebra_simps)
  have "(x + y) mod 10 = (10 * ((x div 10) + (y div 10)) + (?m_x + ?m_y)) mod 10" 
    by (metis \<open>x + y = 10 * ((x div 10) + (y div 10)) + (?m_x + ?m_y)\<close> semiring_norm(3))
  also have "... = (?m_x + ?m_y) mod 10" 
    by (metis mod_mult_self4)
  also have "... = ((x mod 10) + (y mod 10)) mod 10" 
    by auto
  finally show ?thesis 
    by presburger
qed