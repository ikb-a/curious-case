lemma floor_add:
  fixes x y :: real
  shows "floor (x + y) = floor x + floor y + (if (x - floor x + y - floor y) < 1 then 0 else 1)"
proof -
  let ?fx = "floor x"
  let ?fy = "floor y"
  let ?dx = "x - ?fx"
  let ?dy = "y - ?fy"
  have "x = ?fx + ?dx" and "y = ?fy + ?dy" by auto
  from this have "x + y = ?fx + ?fy + ?dx + ?dy" by simp
  have "floor (x + y) = floor (?fx + ?fy + ?dx + ?dy)" by simp
  have "floor (?fx + ?fy + ?dx + ?dy) = ?fx + ?fy + 
        (if (?dx + ?dy) < 1 then 0 else 1)"
  proof (cases "dx + dy < 1")
    case True
    then show ?thesis 
      by (smt (verit) \<open>x + y = real_of_int (\<lfloor>x\<rfloor> + \<lfloor>y\<rfloor>) + (x - real_of_int \<lfloor>x\<rfloor>) + (y - real_of_int \<lfloor>y\<rfloor>)\<close> add_cancel_right_right dense floor_add floor_add_int floor_eq_iff floor_one int_add_floor le_floor_add le_floor_iff)
  next
    case False
    then show ?thesis 
      by (smt (verit) \<open>x + y = real_of_int (\<lfloor>x\<rfloor> + \<lfloor>y\<rfloor>) + (x - real_of_int \<lfloor>x\<rfloor>) + (y - real_of_int \<lfloor>y\<rfloor>)\<close> add_cancel_right_right dense floor_add floor_add_int floor_eq_iff floor_one int_add_floor le_floor_add le_floor_iff)
  qed
  thus ?thesis by auto
qed