lemma square_non_negative:
  fixes a b :: real
  assumes "a = b" "a \<ge> 0" "b \<ge> 0"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  moreover from assms(2) have "0 \<le> a" by simp
  ultimately show "a^2 = b^2" 
    by (simp add: power2_eq_square)
qed