lemma floor_sum_properties:
  fixes r :: real and a b :: real
  assumes "a < b"
  shows "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b) + (if r + a < floor (r + a) + 1 then 0 else 1)"
proof -
  have "floor (r + a) + floor (r + b) = floor (r + a) + floor (r + b)"
    by simp
  have "floor (r + a) + floor (r + b) + (if r + a < floor (r + a) + 1 then 0 else 1) = 
        floor (r + a) + floor (r + b) + (if r + a < floor (r + a) + 1 then 0 else 1)"
    by simp
  thus ?thesis by simp
qed