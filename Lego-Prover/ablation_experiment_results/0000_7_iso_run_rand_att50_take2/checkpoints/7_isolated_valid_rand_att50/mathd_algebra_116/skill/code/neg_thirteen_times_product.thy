lemma neg_thirteen_times_product:
  fixes a b :: real
  shows "-13 * (a * b) = (-13 * a) * b"
proof -
  have "-13 * (a * b) = (-13 * a) * b" by (simp add: field_simps)
  thus ?thesis by auto
qed