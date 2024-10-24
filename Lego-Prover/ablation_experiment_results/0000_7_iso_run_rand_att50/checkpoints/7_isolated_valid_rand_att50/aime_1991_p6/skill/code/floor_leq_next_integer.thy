lemma floor_leq_next_integer:
  fixes x :: real
  shows "floor x + 1 > x"
proof -
  have "floor x \<le> x" by auto
  then show ?thesis by auto
qed