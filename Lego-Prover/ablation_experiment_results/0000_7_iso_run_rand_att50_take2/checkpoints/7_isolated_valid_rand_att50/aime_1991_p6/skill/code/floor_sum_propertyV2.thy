lemma floor_sum_property:
  fixes r :: real
  assumes "a < b"
  shows "floor a + floor b = floor (a + b) + (if a + b < floor a + floor b then 1 else 0)"
proof -
  have "floor a \<le> a" by auto
  have "floor b \<le> b" by auto
  have "floor a + floor b \<le> a + b" by (simp add: add_mono)
  moreover have "a < floor a + 1" by auto
  moreover have "b < floor b + 1" by auto
  ultimately have "a + b < (floor a + floor b) + 2" 
    by arith
  have "floor (a + b) \<le> a + b" by auto
  show ?thesis
  proof (cases "a + b < floor a + floor b")
    case True
    then have "floor (a + b) = floor a + floor b - 1" 
      by auto
    then show ?thesis 
      by (simp add: True)
  next
    case False
    then have "floor (a + b) = floor a + floor b" 
      using `floor (a + b) \<le> a + b` `a + b < (floor a + floor b) + 2` by auto
    then show ?thesis 
      by (simp add: False)
  qed
qed