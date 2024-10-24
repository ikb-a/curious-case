lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor x \<le> x" by auto
  then have "floor x + 1 \<le> x + 1" by (simp add: add_le_mono)
  moreover have "x < floor x + 1" by auto
  ultimately have "floor x + 1 < floor (x + 1) + 1" 
    by (simp add: add_less_mono)
  have "floor (x + 1) \<le> floor x + 1" 
  proof -
    have "x + 1 < floor (x + 1) + 1" 
      by arith
    then show ?thesis 
      by (simp add: add_le_mono)
  qed
  thus ?thesis 
    by auto
qed