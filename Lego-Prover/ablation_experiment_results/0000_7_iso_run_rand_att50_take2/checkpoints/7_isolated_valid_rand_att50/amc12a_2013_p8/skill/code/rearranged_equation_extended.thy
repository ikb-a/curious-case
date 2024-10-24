lemma rearranged_equation_extended:
  fixes x y z :: real
  assumes "x + 2/x = y + 2/y"
  shows "x - y = (2/y - 2/x)"
  and "x + z + 2/x = y + z + 2/y"
proof -
  have eq: "x + 2/x - (y + 2/y) = 0" using assms by simp
  then show "x - y = (2/y - 2/x)" by simp
  have "x + z + 2/x = y + z + 2/y" 
    using eq by (simp add: field_simps)
  thus "x + z + 2/x = y + z + 2/y" by simp
qed