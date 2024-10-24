lemma rearrange_equation_with_differences:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" and "x \<noteq> 0" and "y \<noteq> 0"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y = (2/y - 2/x)" 
    by auto
  thus ?thesis by simp
qed