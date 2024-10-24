lemma nonnegativity_of_sum_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  then show ?thesis 
    using add_nonneg_nonneg[of "x^2" "y^2"] by auto
qed