lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "b = a" using assms by simp
  then show "a^2 = b^2" 
    by (simp add: power2_eq_square)
qed