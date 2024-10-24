lemma algebraic_rearrangement:
  fixes a b c :: real
  shows "a + b = c \<Longrightarrow> c - b = a"
proof -
  assume "a + b = c"
  hence "c - b = a"
    by auto  
  then show "c - b = a" by simp
qed