lemma mod_m_cases:
  fixes a :: int
  fixes m :: nat
  assumes "m > 0"
  shows "a mod m < m"
  by (metis Euclidean_Division.pos_mod_bound assms of_nat_0_less_iff)