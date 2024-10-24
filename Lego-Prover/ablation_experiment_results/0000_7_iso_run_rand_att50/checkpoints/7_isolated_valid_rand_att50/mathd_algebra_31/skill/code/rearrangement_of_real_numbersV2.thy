lemma rearrangement_of_real_numbers:
  fixes a b c :: real
  shows "a = b + c \<Longrightarrow> a - c = b"
proof -
  assume "a = b + c"
  hence "a - c = b + c - c" by simp
  thus "a - c = b" by simp
qed