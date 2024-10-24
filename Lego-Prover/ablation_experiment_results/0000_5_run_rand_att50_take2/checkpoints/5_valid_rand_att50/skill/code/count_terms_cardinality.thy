lemma count_terms_cardinality:
  fixes a b :: nat
  assumes "a < b"
  shows "card {a::nat..<b} = b - a"
proof -
  have "card {a..b-1} = b - a" by (metis Suc_pred' assms bot_nat_0.extremum_strict card_atLeastAtMost zero_less_iff_neq_zero)
  thus ?thesis by simp
qed