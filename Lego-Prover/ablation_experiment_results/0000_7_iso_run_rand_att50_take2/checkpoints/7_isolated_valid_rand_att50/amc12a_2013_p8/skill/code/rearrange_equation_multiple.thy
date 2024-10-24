lemma rearrange_equation_multiple:
  fixes x1 x2 y1 y2 :: real
  assumes "x1 + 2/x1 = y1 + 2/y1" 
      and "x2 + 2/x2 = y2 + 2/y2"
  shows "(x1 - y1) = (2/y1 - 2/x1) \<and> (x2 - y2) = (2/y2 - 2/x2)"
proof -
  have "x1 + 2/x1 - (y1 + 2/y1) = 0" 
    using assms(1) by simp
  hence "x1 - y1 = (2/y1 - 2/x1)" by simp
  have "x2 + 2/x2 - (y2 + 2/y2) = 0" 
    using assms(2) by simp
  hence "x2 - y2 = (2/y2 - 2/x2)" by simp
  thus ?thesis by (metis \<open>x1 - y1 = 2 / y1 - 2 / x1\<close>)
qed