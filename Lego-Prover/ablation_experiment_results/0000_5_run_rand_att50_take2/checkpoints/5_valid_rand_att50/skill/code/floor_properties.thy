lemma floor_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor (x + 1) = max (floor x + 1) (floor x + 1)"
    by auto
  then have "floor (x + 1) \<le> floor x + 1"
    using floor_mono by auto
  moreover have "floor x \<le> x" by auto
  hence "floor x + 1 \<le> x + 1" by (simp add: add_le_mono)
  then have "floor x + 1 \<le> floor (x + 1)" using floor_mono by auto
  ultimately show ?thesis by auto
qed