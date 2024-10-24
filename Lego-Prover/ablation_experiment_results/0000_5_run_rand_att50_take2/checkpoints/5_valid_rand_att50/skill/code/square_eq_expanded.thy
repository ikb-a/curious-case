lemma square_eq_expanded:
  fixes a b :: real
  shows "a = b \<Longrightarrow> (a + c)^2 = (b + c)^2"
proof -
  assume "a = b"
  then show "(a + c)^2 = (b + c)^2" 
    by (simp add: algebra_simps)
qed