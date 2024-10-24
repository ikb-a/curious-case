lemma floor_sum_property:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b then 1 else 0)"
proof -
  have "floor a \<le> a" by auto
  have "floor b \<le> b" by auto
  have "floor a + floor b \<le> a + b" by (simp add: add_mono)
  have "a < floor a + 1" by auto
  have "b < floor b + 1" by auto
  then have "a + b < (floor a + 1) + (floor b + 1)" 
    by (simp add: add_less_mono)
  thus "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b then 1 else 0)"
  proof (cases "a + b < floor a + floor b")
    case True
    then have "floor (a + b) = floor a + floor b - 1" 
      by auto
    thus ?thesis 
      using True by simp
  next
    case False
    then have "floor (a + b) = floor a + floor b" 
      by auto
    thus ?thesis 
      using False by simp
  qed
qed