lemma sum_of_squares_nonneg:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 >= 0"
proof -
  have "x^2 + y^2 >= 0" using nonnegativity_of_squares by simp
  have "(x * y)^2 >= 0" by (simp add: power2_eq_square)
  show ?thesis using add_nonneg_nonneg[of "x^2 + y^2" "(x * y)^2"]
    by (simp add: \<open>x^2 + y^2 >= 0\<close> \<open>(x * y)^2 >= 0\<close>)
qed