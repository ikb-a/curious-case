lemma rearrange_equation_with_conditions:
  fixes x y a b :: real
  assumes "x + a/x = y + b/y" "x > 0" "y > 0"
  shows "x - y = (b/y - a/x)"
proof -
  have "x + a/x - (y + b/y) = 0" using assms(1) by simp
  then show ?thesis by (simp add: assms(2) assms(3))
qed