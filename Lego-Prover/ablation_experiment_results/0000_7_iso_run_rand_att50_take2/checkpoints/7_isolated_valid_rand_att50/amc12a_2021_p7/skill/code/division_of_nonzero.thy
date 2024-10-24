lemma division_of_nonzero:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "(a * b) / a = b" and "(a * b) / b = a"
proof -
  have "(a * b) / a = b" using assms by (simp add: field_simps)
  thus "(a * b) / a = b" by simp
next
  have "(a * b) / b = a" using assms by (simp add: field_simps)
  thus "(a * b) / b = a" by simp
qed