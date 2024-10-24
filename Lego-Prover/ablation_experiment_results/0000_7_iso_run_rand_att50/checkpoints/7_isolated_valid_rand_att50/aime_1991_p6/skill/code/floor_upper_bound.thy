lemma floor_upper_bound:
  fixes x :: real
  shows "floor x < x + 1"
proof -
  have "floor x \<le> x" by auto
  then show ?thesis using add_le_mono by arith
qed