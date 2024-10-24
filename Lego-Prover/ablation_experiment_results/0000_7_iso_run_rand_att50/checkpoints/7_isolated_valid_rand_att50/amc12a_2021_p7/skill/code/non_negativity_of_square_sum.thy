lemma non_negativity_of_square_sum:
  fixes a b :: real
  shows "(a + b)^2 >= 0"
proof -
  have "(a + b)^2 = a^2 + 2 * a * b + b^2" by (simp add: power2_eq_square algebra_simps)
  then show ?thesis 
    by sos
qed