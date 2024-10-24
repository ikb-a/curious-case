lemma algebra_2varlineareq_simpler:
  fixes x e :: complex
  assumes h0 : "x + e = 7"
  shows "e = 7 - x"
proof -
  show ?thesis by (metis add_diff_cancel_left' diff_minus_eq_add h0 verit_minus_simplify(3))
qed