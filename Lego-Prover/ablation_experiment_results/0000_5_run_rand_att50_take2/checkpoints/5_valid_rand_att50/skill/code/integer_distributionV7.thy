lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n"
  shows "x \<le> n \<Longrightarrow> y \<le> n"
proof -
  assume hyp_x: "x \<le> n"
  have "y = n - x" using assms by simp
  moreover have "n - x \<ge> 0" using hyp_x by (simp add: nat_le_linear)
  ultimately have "y \<le> n" by auto
  thus ?thesis by simp
qed