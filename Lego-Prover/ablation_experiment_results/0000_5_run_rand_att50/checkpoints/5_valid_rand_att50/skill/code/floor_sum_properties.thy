lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)"
proof -
  have "floor a + floor b \<le> floor (a + b)" using floor_add[of a b] by simp
  moreover have "floor (a + b) < floor a + floor b + 1" 
  proof -
    have "floor a + floor b + 1 > a + b" 
      using assms by auto
    thus ?thesis by (simp add: floor_le_iff)
  qed
  ultimately show ?thesis 
    by (simp add: le_less_trans)
qed