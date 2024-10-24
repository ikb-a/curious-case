lemma square_equivalence:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  from assms have "a = b" by simp
  then show "a^2 = b^2" 
    by (simp add: power2_eq_square)
qed