lemma conditions_on_a_and_n:
  fixes a :: nat
  fixes n :: nat
  assumes "b > 0"
  assumes "b * n \<le> c" 
  shows "c - b * n \<ge> 0"
proof -
  have "c - b * n = c - (b * n)" by simp
  also have "... = c - c + (c - b * n)" using assms by (simp add: le_diff_eq)
  finally have "c - b * n \<ge> 0" by (simp add: le_zero_eq)
  thus ?thesis by simp
qed