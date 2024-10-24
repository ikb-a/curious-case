lemma rearrange_and_simplify_two_equations:
  fixes x y z :: real
  assumes "x + 2/x = y + 2/y" "x + 2/x = z + 2/z"
  shows "y - z = (2/z - 2/y)"
proof -
  have "y + 2/y = x + 2/x" and "z + 2/z = x + 2/x" using assms by simp_all
  thus ?thesis 
    using rearrange_and_simplify_equation by auto
qed