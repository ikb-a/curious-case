lemma floor_add:
  fixes x y :: real
  shows "floor (x + y) = floor x + floor y + (if (x - floor x + y - floor y) < 1 then 0 else 1)"
proof -
  have "floor (x + y) = floor (floor x + floor y + (x - floor x) + (y - floor y))"
    by auto
  let ?fx = "floor x" and ?fy = "floor y"
  let ?dx = "x - ?fx" and ?dy = "y - ?fy"
  have "floor (x + y) = floor (?fx + ?fy + ?dx + ?dy)"
    by (simp add: field_simps)
  have "floor (?fx + ?fy + ?dx + ?dy) = ?fx + ?fy + (if ?dx + ?dy < 1 then 0 else 1)"
    by (smt (verit) Ints_1 \<open>\<lfloor>x + y\<rfloor> = \<lfloor>real_of_int (\<lfloor>x\<rfloor> + \<lfloor>y\<rfloor>) + (x - real_of_int \<lfloor>x\<rfloor>) + (y - real_of_int \<lfloor>y\<rfloor>)\<rfloor>\<close> add_cancel_right_right ceiling_add_of_int ceiling_of_int dense floor_add floor_add2 floor_add_int floor_correct floor_eq_iff floor_le_iff floor_one int_add_floor le_floor_add of_int_1 of_int_add)
  thus ?thesis
    by (simp add: add.commute)
qed