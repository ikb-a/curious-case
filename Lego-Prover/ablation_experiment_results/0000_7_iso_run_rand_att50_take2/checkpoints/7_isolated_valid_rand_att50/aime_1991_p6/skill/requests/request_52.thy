lemma floor_sum:
  fixes r :: real
  assumes "a \<le> r < b"
  shows "floor (r + k) = floor r + floor k" for k :: real
  using assms by (simp add: floor_add)