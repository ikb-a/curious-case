lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "x = floor x + (x - floor x)" by auto
  then have "x + 1 = floor x + (x - floor x) + 1" by simp
  then have "x + 1 = floor x + (x - floor x + 1)" by (simp add: add.assoc)
  have "floor (x + 1) = floor (floor x + (x - floor x + 1))" by simp
  have "x - floor x + 1 < 2" 
  proof -
    have "0 \<le> (x - floor x)" by auto
    thus ?thesis by arith
  qed
  then have "floor (floor x + (x - floor x + 1)) = floor x + (if (x - floor x + 1) < 1 then 0 else 1)"
    by (smt (verit) \<open>x + 1 = real_of_int \<lfloor>x\<rfloor> + (x - real_of_int \<lfloor>x\<rfloor> + 1)\<close> add.commute diff_ge_0_iff_ge floor_correct le_add_same_cancel1 one_add_floor verit_comp_simplify1(3))
  thus ?thesis by simp
qed