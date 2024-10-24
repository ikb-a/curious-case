lemma rearrange_equation_general:
  fixes x y :: real
  assumes "x + a/x = y + a/y" "x \<noteq> 0" "y \<noteq> 0"
  shows "x - y = (a/y - a/x)"
proof -
  have "x + a/x - (y + a/y) = 0" using assms(1) by simp
  then have "x - y = (a/y - a/x)" 
    using assms(2) assms(3) by (simp add: field_simps)
  thus ?thesis by simp
qed