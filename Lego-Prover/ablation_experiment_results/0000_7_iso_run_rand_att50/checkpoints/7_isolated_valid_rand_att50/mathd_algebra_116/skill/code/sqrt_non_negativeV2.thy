lemma sqrt_non_negative:
  fixes x :: real
  assumes "x \<ge> 0"
  shows "sqrt x \<ge> 0"
proof -
  have "sqrt x = sqrt x * 1" by simp
  also have "... = sqrt x * (sqrt x / sqrt x)" 
    using assms by auto
  also have "... = (sqrt x)^2 / sqrt x" 
    by (metis power2_eq_square times_divide_eq_right)
  finally have "sqrt x \<ge> 0" 
    using assms by auto
  thus ?thesis by simp
qed