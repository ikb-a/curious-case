lemma floor_function_properties:
  fixes x :: real
  shows "floor (x + 1) = floor x + 1"
proof -
  have "floor (x + 1) = floor (floor x + (x - floor x) + 1)"
    by (simp add: field_simps)
  let ?fx = "floor x"
  let ?dx = "x - ?fx"
  have "x + 1 = ?fx + ?dx + 1" by (simp add: field_simps)
  have "floor (?fx + ?dx + 1) = ?fx + 1"
  proof (cases "0 \<le> ?dx")
    case True
    then have "?fx + ?dx + 1 = ?fx + 1 + ?dx" by simp
    moreover have "?fx + ?dx + 1 < ?fx + 1 + 1" 
      by arith
    ultimately show ?thesis 
      by auto
  next
    case False
    then have "?dx < 0" and consequently "?fx + ?dx + 1 < ?fx + 1" 
      by auto
    thus ?thesis 
      by (simp add: floor_le_iff)
  qed
  thus ?thesis by simp
qed