lemma product_difference_condition:
  fixes x y :: real
  assumes "x \<noteq> y" "x * y = c" 
  shows "x - y \<noteq> 0"
proof -
  have "x - y \<noteq> 0" using assms by simp
  thus ?thesis by simp
qed