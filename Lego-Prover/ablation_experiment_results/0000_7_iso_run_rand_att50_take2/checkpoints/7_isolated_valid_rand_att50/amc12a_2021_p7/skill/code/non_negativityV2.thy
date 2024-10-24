lemma non_negativity:
  fixes a :: real
  shows "a^2 >= 0"
proof -
  have "a^2 = a * a" by sos
  then show "a^2 >= 0" 
    by (cases "a >= 0") (auto simp: mult_nonneg_nonneg)
qed