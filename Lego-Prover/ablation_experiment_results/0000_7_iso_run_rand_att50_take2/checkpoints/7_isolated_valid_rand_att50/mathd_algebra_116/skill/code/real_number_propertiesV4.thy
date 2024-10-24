lemma real_number_properties:
  fixes x y :: real
  assumes "x \<ge> 0" "y \<ge> 0"
  shows "x + y \<ge> 0"
proof -
  have "x + y \<ge> 0 + 0" 
    using assms by auto
  thus ?thesis by simp
qed