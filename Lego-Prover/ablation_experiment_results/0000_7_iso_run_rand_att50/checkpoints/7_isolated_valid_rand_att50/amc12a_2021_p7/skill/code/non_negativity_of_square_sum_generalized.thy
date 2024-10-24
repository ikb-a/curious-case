lemma non_negativity_of_square_sum_generalized:
  fixes x y :: real
  shows "(x + y)^2 >= 0"
proof -
  have "(x + y)^2 = x^2 + 2 * x * y + y^2" by (simp add: power2_eq_square algebra_simps)
  then show ?thesis 
    by sos  
qed