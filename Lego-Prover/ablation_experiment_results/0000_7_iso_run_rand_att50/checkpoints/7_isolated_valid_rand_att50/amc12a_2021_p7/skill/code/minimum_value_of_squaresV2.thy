lemma minimum_value_of_squares:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 >= 0"
proof -
  have "x^2 >= 0" by (auto simp add: power2_eq_square)
  have "y^2 >= 0" by (auto simp add: power2_eq_square)
  have "(x * y)^2 >= 0" by (auto simp add: power2_eq_square)
  have "x^2 + y^2 + (x * y)^2 = x^2 + y^2 + (x * y)^2" by simp
  then show ?thesis 
    using add_nonneg_nonneg[of "x^2 + y^2" "(x * y)^2"] 
          \<open>x^2 >= 0\<close> 
          \<open>y^2 >= 0\<close> 
          \<open>(x * y)^2 >= 0\<close> 
    by auto
qed