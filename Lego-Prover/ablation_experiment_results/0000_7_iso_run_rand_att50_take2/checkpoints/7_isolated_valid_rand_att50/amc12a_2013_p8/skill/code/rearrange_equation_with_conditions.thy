lemma rearrange_equation_with_conditions:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
      and "x \<noteq> 0" 
      and "y \<noteq> 0"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms(1) by simp
  then show ?thesis by (simp add: assms(2) assms(3))
qed