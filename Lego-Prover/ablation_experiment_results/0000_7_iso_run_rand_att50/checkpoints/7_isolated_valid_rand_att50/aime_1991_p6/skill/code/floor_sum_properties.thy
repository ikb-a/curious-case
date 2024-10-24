lemma floor_sum_properties:
  fixes a b x :: real
  assumes "a < b" "x > 0"
  shows "floor (x + a) + floor (x + b) = floor (x + a) + floor (x + b)"
proof -
  have "floor (x + a) + floor (x + b) = floor (x + a) + floor (x + b)"
    by simp
  thus ?thesis by simp
qed