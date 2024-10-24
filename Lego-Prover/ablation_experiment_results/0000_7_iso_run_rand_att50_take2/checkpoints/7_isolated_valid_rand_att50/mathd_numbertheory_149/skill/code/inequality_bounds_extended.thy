lemma inequality_bounds_extended:
  fixes x :: nat
  assumes "x < a" "x < b" "x < c"
  shows "x < min (min a b) c"
proof -
  have "x < a" using assms(1) by simp
  have "x < b" using assms(2) by simp
  have "x < c" using assms(3) by simp
  then show "x < min (min a b) c" 
    by (metis assms(1) assms(2) min_less_iff_conj)
qed