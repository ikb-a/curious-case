lemma square_root_equivalence:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "sqrt a = sqrt b"
  shows "a = b"
proof -
  have "sqrt a * sqrt a = sqrt b * sqrt b" 
    using assms(3) by auto
  then have "a = b" 
    by (metis assms(3) real_sqrt_eq_iff)
  thus ?thesis by simp
qed