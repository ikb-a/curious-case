lemma inequality_bounds:
  fixes x :: nat
  assumes "x < a" "x < b"
  shows "x < min a b"
proof -
  from assms(1) have "x < a" by simp
  from assms(2) have "x < b" by simp
  then show "x < min a b" 
    by (metis assms(1) min_less_iff_conj)
qed