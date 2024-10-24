lemma rearrange_equation_generalized:
  fixes x y a b :: real
  assumes "x + a/x = y + b/y"
    and "x \<noteq> 0"
    and "y \<noteq> 0"
  shows "x - y = (b/y - a/x)"
proof -
  have "x + a/x - (y + b/y) = 0" using assms by simp
  then show ?thesis by simp
qed