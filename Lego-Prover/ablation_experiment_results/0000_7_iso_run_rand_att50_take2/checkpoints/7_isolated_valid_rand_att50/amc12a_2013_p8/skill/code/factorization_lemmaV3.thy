lemma factorization_lemma:
  fixes a b c d :: real
  assumes "a \<noteq> b"
  shows "(a - b) * (c + d) = 0 \<longleftrightarrow> c + d = 0"
proof
  assume rhs: "c + d = 0"
  then have "(a - b) * (c + d) = (a - b) * 0" by simp
  thus "(a - b) * (c + d) = 0" by simp
next
  assume lhs: "(a - b) * (c + d) = 0"
  have "c + d = 0 \<longleftrightarrow> (a - b) * (c + d) = 0" using lhs
  proof (cases "c + d = 0")
    case True
    then show ?thesis by simp
  next
    case False
    then have "c + d \<noteq> 0" by simp
    then have "a - b = 0" by (metis lhs mult_eq_0_iff)
    with assms show ?thesis by auto
  qed
  thus "c + d = 0" by (metis lhs)
qed