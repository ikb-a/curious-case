lemma cross_multiply:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a / b = c / d) \<longleftrightarrow> (a * d = b * c)"
proof
  assume "a / b = c / d"
  then have "a * d = c * b"
    by (simp add: assms(1) assms(2) field_simps)
  thus "a * d = b * c" by simp
next
  assume "a * d = b * c"
  then have "a / b = c / d"
    using assms(1) assms(2) by (simp add: field_simps)
  thus "a / b = c / d" by simp
qed