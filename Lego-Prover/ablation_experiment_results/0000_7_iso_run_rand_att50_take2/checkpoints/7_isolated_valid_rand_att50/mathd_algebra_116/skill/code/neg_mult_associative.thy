lemma neg_mult_associative:
  fixes x :: real
  shows "-13 * (x * 2) = (-13 * x) * 2"
proof -
  have "-13 * (x * 2) = -13 * x * 2" by (simp add: field_simps)
  then show ?thesis by simp
qed