lemma general_recurrence_formula:
  fixes x :: "nat \<Rightarrow> int" and k :: nat
  assumes "\<And>(n::nat). (n \<ge> 5 \<Longrightarrow> x n = - x (n-5))"
  shows "x (5*k + n) = (-1)^k * x n"
proof (induction k)
  case 0
  then show ?case by simp
next
  case (Suc k)
  have "x (5 * Suc k + n) = x (5 * k + 5 + n)" by (auto simp: field_simps)
  also have "... = - x (5 * k + n)" using assms(1) by auto
  finally have "x (5 * Suc k + n) = - x (5 * k + n)" .
  also have "x (5 * k + n) = (-1)^k * x n" using Suc.IH by simp
  thus ?case using `x (5 * Suc k + n) = - x (5 * k + n)` by (simp add: power_Suc)
qed