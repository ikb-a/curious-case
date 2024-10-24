lemma nonzero_division:
  fixes a b c :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a / b = c \<Longrightarrow> a = c * b"
proof -
  assume "a / b = c"
  then have "c * b = a" 
    using assms(2) by auto
  thus ?thesis by simp
qed