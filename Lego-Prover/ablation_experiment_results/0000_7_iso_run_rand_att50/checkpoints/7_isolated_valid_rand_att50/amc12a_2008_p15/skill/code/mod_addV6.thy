lemma mod_add:
  fixes a b :: nat
  shows "(a + b) mod 10 = ((a mod 10) + (b mod 10)) mod 10"
proof -
  let ?m_a = "a mod 10"
  let ?m_b = "b mod 10"
  have "a = 10 * (a div 10) + ?m_a" by auto
  have "b = 10 * (b div 10) + ?m_b" by auto
  have "a + b = (10 * (a div 10) + ?m_a) + (10 * (b div 10) + ?m_b)" 
    by (metis \<open>a = 10 * (a div 10) + ?m_a\<close> \<open>b = 10 * (b div 10) + ?m_b\<close>)
  then have "a + b = 10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)" 
    by (simp add: algebra_simps)
  have "(a + b) mod 10 = (10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)) mod 10" 
    by (metis \<open>a + b = 10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)\<close> semiring_norm(3))
  also have "... = (?m_a + ?m_b) mod 10" 
    by (metis mod_mult_self4)
  also have "... = ((a mod 10) + (b mod 10)) mod 10" 
    by auto
  finally show ?thesis 
    by presburger
qed