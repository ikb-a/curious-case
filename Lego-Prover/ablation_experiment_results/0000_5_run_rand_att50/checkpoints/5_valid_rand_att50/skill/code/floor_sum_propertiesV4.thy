lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)"
proof -
  have "floor a + floor b \<le> a + b" 
    by auto
  have "a + b < floor a + floor b + 1" 
    using assms by auto
  have "floor (a + b) = floor a + floor b" 
    using floor_add assms by auto
  have "floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1) = 
        floor a + floor b + (if a + b < floor a + floor b + 1 then 0 else 1)" 
    by auto
  show ?thesis 
  proof (cases "a + b < floor a + floor b + 1")
    case True
    then have "floor a + floor b = floor (a + b) + 0" 
      by auto
    thus ?thesis by simp
  next
    case False
    then have "floor a + floor b = floor (a + b) + 1" 
      by auto
    thus ?thesis by simp
  qed
qed