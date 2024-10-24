lemma neg_scalar_multiplication:
  fixes x :: real
  fixes k :: real
  shows "(-k) * x = -(k * x)"
  by (simp add: field_simps)