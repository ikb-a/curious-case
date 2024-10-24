lemma integer_divisibility:
  fixes n d :: nat
  assumes "n mod d = 0"
  shows "\<exists>k. n = k * d"
proof -
  have "n mod d = 0" using assms by simp
  then have "n = d * (n div d) + (n mod d)" 
    by auto
  then show "\<exists>k. n = k * d" 
    by (smt (verit) Nat.diff_add_assoc assms diff_add_inverse2 diff_is_0_eq' le_numeral_extra(3) mult.commute)
qed