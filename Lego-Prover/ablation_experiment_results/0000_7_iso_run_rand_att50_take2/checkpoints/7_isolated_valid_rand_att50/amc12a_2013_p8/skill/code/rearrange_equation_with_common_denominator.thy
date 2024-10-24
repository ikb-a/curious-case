lemma rearrange_equation_with_common_denominator:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2 * (x - y)) / (x * y)"
proof -
  have "x + 2/x - (y + 2/y) = 0" using assms by simp
  then have "x - y = (2/y - 2/x)" by (simp add: field_simps)
  then show ?thesis
    using `x + 2/x = y + 2/y` 
    by sos
qed