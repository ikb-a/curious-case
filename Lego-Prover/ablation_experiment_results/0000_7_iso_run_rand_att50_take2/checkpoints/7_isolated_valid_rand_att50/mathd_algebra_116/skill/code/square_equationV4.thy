lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  from assms have "a^2 = b^2" 
    by (simp add: power2_eq_square)
  thus ?thesis by simp
qed