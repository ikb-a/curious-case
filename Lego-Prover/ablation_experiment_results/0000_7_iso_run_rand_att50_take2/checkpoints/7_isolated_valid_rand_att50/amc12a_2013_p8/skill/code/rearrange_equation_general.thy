lemma rearrange_equation_general:
  fixes x y a b :: real
  assumes "x + a/x = y + b/y" 
    and "x \<noteq> y" 
    and "x > 0" 
    and "y > 0"
  shows "x - y = (b/y - a/x)"
proof -
  have "x + a/x - (y + b/y) = 0" using assms by simp
  then have "x - y = (b/y - a/x)" 
    by (simp add: assms(1) algebra_simps)
  thus ?thesis by simp
qed