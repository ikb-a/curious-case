lemma sqrt_positive_extended:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0" and "sqrt a \<noteq> 0"
proof -
  have "sqrt a > 0" using assms by (simp add: assms)
  thus "sqrt a > 0" by simp
next
  have "sqrt a \<noteq> 0" using assms by auto
  thus "sqrt a \<noteq> 0" by simp
qed