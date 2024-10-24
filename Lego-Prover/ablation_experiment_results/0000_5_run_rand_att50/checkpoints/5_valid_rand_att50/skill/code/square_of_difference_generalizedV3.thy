lemma square_of_difference_generalized:
  fixes x y :: real
  shows "(x - y)^2 = x^2 - 2 * x * y + y^2"
proof -
  have "x - y = x + -y" by simp
  then show ?thesis by (simp add: power2_diff)
qed