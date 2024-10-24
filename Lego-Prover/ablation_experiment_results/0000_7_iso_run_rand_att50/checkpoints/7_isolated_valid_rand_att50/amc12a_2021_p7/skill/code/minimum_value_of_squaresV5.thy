lemma minimum_value_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 >= 0"
proof -
  have "x^2 >= 0" by (simp add: power2_eq_square)
  have "y^2 >= 0" by (simp add: power2_eq_square)
  have "(x * y)^2 >= 0" by (simp add: power2_eq_square)
  have "x^2 + y^2 >= 0" using \<open>x^2 >= 0\<close> \<open>y^2 >= 0\<close> 
    by (simp add: add_nonneg_nonneg)
  have "x^2 + y^2 + (x * y)^2 = (x^2 + y^2) + (x * y)^2" 
    by simp
  show ?thesis using \<open>x^2 + y^2 >= 0\<close> \<open>(x * y)^2 >= 0\<close>
    by (simp add: add_nonneg_nonneg)
qed