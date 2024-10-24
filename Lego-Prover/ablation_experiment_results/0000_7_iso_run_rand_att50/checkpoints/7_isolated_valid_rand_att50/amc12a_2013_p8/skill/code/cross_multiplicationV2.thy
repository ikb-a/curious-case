lemma cross_multiplication:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a = c) \<Longrightarrow> (a * b = c * d) = (b * a = d * c)"
proof -
  assume "a = c"
  then show "(a * b = c * d) = (b * a = d * c)"
    by (simp add: algebra_simps)
qed