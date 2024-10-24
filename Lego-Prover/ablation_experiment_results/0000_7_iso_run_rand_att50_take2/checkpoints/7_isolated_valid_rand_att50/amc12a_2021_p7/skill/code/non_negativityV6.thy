lemma non_negativity:
  fixes x y :: real
  shows "x^2 + y^2 + (x * y)^2 \<ge> 0"
proof -
  have "x^2 >= 0" by auto
  have "y^2 >= 0" by auto
  have "(x * y)^2 >= 0" by auto
  then have "x^2 + y^2 + (x * y)^2 >= 0 + 0 + 0" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed