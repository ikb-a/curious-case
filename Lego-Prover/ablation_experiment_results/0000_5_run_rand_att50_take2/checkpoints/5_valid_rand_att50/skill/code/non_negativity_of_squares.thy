lemma non_negativity_of_squares:
  fixes z :: real
  shows "z^2 >= 0"
proof -
  have "z^2 = z * z" 
    by (simp add: power2_eq_square)
  moreover have "z * z >= 0" 
    by auto
  ultimately show "z^2 >= 0" 
    by simp
qed