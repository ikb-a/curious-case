lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor (x + 1) = floor x + 1" 
  proof (cases "x \<in> \<int>")
    case True
    then have "floor x = x" by auto
    hence "floor (x + 1) = x + 1" by auto
    thus ?thesis by (simp add: True)
  next
    case False
    then have "floor x < x" by (metis Ints_of_int dual_order.strict_iff_order of_int_floor_le)
    then have "floor x + 1 > x" by auto
    then have "floor (x + 1) = floor x + 1" using floor_add[of x 1] by simp
    thus ?thesis by simp
  qed
  thus ?thesis by simp
qed