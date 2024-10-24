lemma mod_add:
  fixes a b :: nat
  shows "(a + b) mod 10 = ((a mod 10) + (b mod 10)) mod 10"
proof -
  have "a mod 10 < 10" and "b mod 10 < 10"
    by auto
  let ?m_a = "a mod 10"
  let ?m_b = "b mod 10"
  have "a = 10 * (a div 10) + ?m_a" and "b = 10 * (b div 10) + ?m_b"
    by auto
  then have "a + b = (10 * (a div 10) + ?m_a) + (10 * (b div 10) + ?m_b)"
    by simp
  thus ?thesis
  proof -
    have "a + b = 10 * ((a div 10) + (b div 10)) + (?m_a + ?m_b)"
      by simp
    also have "... mod 10 = (?m_a + ?m_b) mod 10"
      by (metis mod_mult_self4)
    finally show ?thesis
      by simp
  qed
qed