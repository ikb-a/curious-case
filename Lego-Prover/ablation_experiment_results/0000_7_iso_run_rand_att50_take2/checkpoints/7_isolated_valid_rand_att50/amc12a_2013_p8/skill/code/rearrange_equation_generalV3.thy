lemma rearrange_equation_general:
  fixes x y :: real
  assumes "x + c/x = y + c/y" "x \<noteq> 0" "y \<noteq> 0" "c > 0"
  shows "x - y = (c/y - c/x)"
proof -
  have "x + c/x - (y + c/y) = 0" using assms(1) by simp
  then have "x - y = (c/y - c/x)" 
    using assms(2) assms(3) by (simp add: field_simps)
  thus ?thesis by simp
qed