lemma floor_add:
  fixes r :: real and k :: real
  shows "floor (r + k) = floor r + floor k + (if r + k < floor r + floor k + 1 then 0 else 1)"
proof -
  have "floor (r + k) = floor (floor r + floor k + (r - floor r) + (k - floor k))"
    by auto
  then show ?thesis
    by (smt (verit) ceiling_add_of_int ceiling_of_int ceiling_zero floor_add floor_add_int floor_eq_iff floor_one floor_zero int_add_floor le_floor_add le_floor_iff not_one_le_zero of_int_1 of_int_add)
qed