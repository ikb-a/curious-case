lemma floor_properties:
  fixes x :: real
  shows "floor x + 1 > x"
proof -
  have "floor x \<le> x" by auto
  then have "floor x + 1 > x" 
    by auto
  thus ?thesis by simp
qed