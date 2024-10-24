lemma floor_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor (x + 1) = floor (x + 1 + 0)" by simp
  then have "floor (x + 1) = floor (x + 1)" by simp
  then have "floor (x + 1) = floor x + 1" 
    by auto
  show ?thesis
    using `floor (x + 1) = floor x + 1` by auto
qed