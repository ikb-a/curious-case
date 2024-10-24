lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)"
proof -
  have "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)"
  proof (cases "a + b < floor a + floor b + 1")
    case True
    then have "floor (a + b) = floor a + floor b" 
      using floor_add[of a b] assms by auto
    thus ?thesis 
      by (simp add: True)
  next
    case False
    hence "a + b \<ge> floor a + floor b + 1" by simp
    then have "floor (a + b) = floor a + floor b" 
      using floor_add[of a b] assms by auto
    thus ?thesis 
      by (simp add: False)
  qed
  thus ?thesis by simp
qed