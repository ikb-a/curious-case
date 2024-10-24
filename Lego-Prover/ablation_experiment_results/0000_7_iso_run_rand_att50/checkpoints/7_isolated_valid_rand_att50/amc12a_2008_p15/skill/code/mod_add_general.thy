lemma mod_add_general:
  fixes a b m :: nat
  assumes "m > 0"
  shows "(a + b) mod m = ((a mod m) + (b mod m)) mod m"
proof -
  let ?m_a = "a mod m"
  let ?m_b = "b mod m"
  have "a = m * (a div m) + ?m_a" and "b = m * (b div m) + ?m_b"
    by auto
  have "a + b = (m * (a div m) + ?m_a) + (m * (b div m) + ?m_b)"
    by simp
  thus ?thesis
  proof -
    have "a + b = m * ((a div m) + (b div m)) + (?m_a + ?m_b)"
      by (auto simp: field_simps)
    also have "... mod m = (?m_a + ?m_b) mod m"
      by (metis mod_mult_self4)
    finally show ?thesis
      by simp
  qed
qed