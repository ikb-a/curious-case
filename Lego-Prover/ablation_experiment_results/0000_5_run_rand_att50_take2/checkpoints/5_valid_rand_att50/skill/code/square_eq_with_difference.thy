lemma square_eq_with_difference:
  fixes a b :: real
  shows "a = b \<Longrightarrow> (a - b) * (a + b) = 0"
proof -
  assume "a = b"
  then show "(a - b) * (a + b) = 0" 
    by simp
qed