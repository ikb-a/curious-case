lemma rearranging_equation:
  fixes a b c :: real
  shows "b = a - c \<longleftrightarrow> a = b + c"
proof -
  have "b = a - c \<longrightarrow> a = b + c" 
    by auto
  have "a = b + c \<longrightarrow> b = a - c" 
    by auto
  show "b = a - c \<longleftrightarrow> a = b + c" 
    by auto
qed