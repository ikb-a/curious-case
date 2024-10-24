lemma mod_add_general:
  fixes a b :: nat
  shows "(a + b) mod n = ((a mod n) + (b mod n)) mod n"
proof -
  let ?m_a = "a mod n"
  let ?m_b = "b mod n"
  have "a = n * (a div n) + ?m_a" and "b = n * (b div n) + ?m_b"
    by auto
  have "a + b = (n * (a div n) + ?m_a) + (n * (b div n) + ?m_b)"
    by simp
  thus ?thesis
  proof -
    have "a + b = n * ((a div n) + (b div n)) + (?m_a + ?m_b)"
      by (auto simp: field_simps)
    also have "... mod n = (?m_a + ?m_b) mod n"
      by (metis mod_mult_self4)
    finally show ?thesis
      by simp
  qed
qed