lemma find_a_b_value:
  fixes c d :: real
  assumes 
    "c / 3 + d = 5"
    "d / 3 + c = 7"
  shows "c = 6 \<and> d = 3"
proof -
  have "d = 5 - c / 3" 
    using assms(1) by auto
  then have "c + (5 - c / 3) / 3 = 7" 
    using assms(2) by auto
  then have "c + (5 / 3 - c / 9) = 7" 
    by (simp add: field_simps)
  then have "c - c / 9 = 7 - 5 / 3" 
    by (simp add: algebra_simps)
  then have "c * (1 - 1 / 9) = 7 - 5 / 3" 
    by (simp add: algebra_simps)
  then have "c * (8 / 9) = 7 - 5 / 3" 
    by (simp add: field_simps)
  then have "c * (8 / 9) = (21 - 5) / 3" 
    by (simp add: field_simps)
  then have "c * (8 / 9) = 16 / 3" 
    by (simp add: field_simps)
  then have "c = (16 / 3) * (9 / 8)" 
    by (simp add: field_simps)
  then have "c = 6" 
    by (simp add: field_simps)
  then have "d = 5 - c / 3" 
    using `c = 6` by (metis \<open>d = 5 - c / 3\<close> semiring_norm(5))
  then show "c = 6 \<and> d = 3" 
    using `c = 6` by auto
qed