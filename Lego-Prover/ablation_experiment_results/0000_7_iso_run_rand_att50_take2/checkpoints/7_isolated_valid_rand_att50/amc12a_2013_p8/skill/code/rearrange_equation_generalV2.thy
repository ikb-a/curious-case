lemma rearrange_equation_general:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" and "x \<noteq> 0" and "y \<noteq> 0"
  shows "x - y = (2/y - 2/x)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then show ?thesis by (simp add: field_simps)
qed