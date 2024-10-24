lemma nonnegativity_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  show ?thesis using add_nonneg_nonneg[of "x^2" "y^2"]
    by (simp add: \<open>x^2 >= 0\<close> \<open>y^2 >= 0\<close>)
qed