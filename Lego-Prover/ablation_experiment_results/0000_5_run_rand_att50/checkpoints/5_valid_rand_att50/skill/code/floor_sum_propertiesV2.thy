lemma floor_sum_properties:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)"
proof -
  have "floor a + floor b \<le> a + b" 
    by auto
  also have "... < floor a + floor b + 1" 
    using assms by auto
  hence "floor a + floor b < floor a + floor b + 1" by simp
  then have "a + b < floor a + floor b + 1" using `floor a + floor b \<le> a + b` by auto
  have "floor (a + b) = floor a + floor b" 
    by auto
  hence "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b + 1 then 0 else 1)" 
    by auto
  thus ?thesis by simp
qed