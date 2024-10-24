lemma floor_sum_properties:
  fixes a b r :: real
  assumes "a < b" "r > 0"
  shows "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b)"
proof -
  have "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b)"
    by simp
  thus ?thesis by simp
qed