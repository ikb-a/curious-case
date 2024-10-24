lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n"
  shows "x \<le> n \<Longrightarrow> y \<le> n"
proof -
  assume "x \<le> n"  
  from assms have "y = n - x" by simp  
  also have "n - x \<ge> 0" using `x \<le> n` by auto  
  ultimately have "y \<le> n" by (simp add: le_diff_eq)  
  thus ?thesis by simp  
qed