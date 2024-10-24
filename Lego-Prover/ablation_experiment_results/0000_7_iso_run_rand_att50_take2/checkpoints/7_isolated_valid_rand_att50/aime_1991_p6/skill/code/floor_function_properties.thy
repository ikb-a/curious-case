lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor x \<le> x" by auto
  then have "floor x + 1 \<le> x + 1" by simp
  moreover have "x < floor x + 1" by auto
  ultimately have "floor x + 1 < floor (x + 1) + 1" 
    by auto
  have "floor (x + 1) \<le> floor x + 1" 
  proof -
    have "x + 1 < floor (x + 1) + 1" 
      by arith
    then show ?thesis 
      by auto
  qed
  thus ?thesis 
    by auto
qed