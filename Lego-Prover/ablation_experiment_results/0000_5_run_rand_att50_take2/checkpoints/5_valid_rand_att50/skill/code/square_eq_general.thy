lemma square_eq_general:
  fixes a b :: real
  shows "a = b \<Longrightarrow> a^2 = b^2"
proof -
  assume "a = b"
  then show "a^2 = b^2" by simp
qed