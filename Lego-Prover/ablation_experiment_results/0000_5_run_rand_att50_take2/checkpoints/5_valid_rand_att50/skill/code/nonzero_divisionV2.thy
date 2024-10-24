lemma nonzero_division:
  fixes a b c :: real
  assumes "a \<noteq> 0" and "b \<noteq> 0"
  shows "a / b = c \<Longrightarrow> a = c * b"
proof -
  assume "a / b = c"
  then have "a = c * b" using assms by (simp add: field_simps)
  thus ?thesis by assumption
qed