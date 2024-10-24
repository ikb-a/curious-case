lemma square_expression_simplified:
  fixes a b :: real
  assumes "a = c + d" and "b = e + f"
  shows "(a - b)^2 = (c - e)^2 + (d - f)^2 + 2*(c - e)*(d - f)"
proof -
  have "(a - b) = ((c + d) - (e + f))" using assms by simp
  then show ?thesis
    by sos
qed