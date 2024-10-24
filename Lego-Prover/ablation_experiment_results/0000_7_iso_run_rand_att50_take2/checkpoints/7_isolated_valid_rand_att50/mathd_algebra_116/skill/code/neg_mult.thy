lemma neg_mult:
  fixes a x :: real
  assumes "a \<noteq> 0"
  shows "-a * x = - (a * x)"
proof -
  have "-a * x = - (a * x)" by simp
  then show ?thesis by simp
qed