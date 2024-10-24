lemma rearrangement_of_real_numbers:
  fixes a b c :: real
  shows "a = b + c \<Longrightarrow> a - c = b"
proof -
  assume h: "a = b + c"  
  have "a - c = (b + c) - c" using h by simp  
  thus "a - c = b" by simp  
qed