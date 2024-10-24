lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n"
  shows "x \<le> n \<Longrightarrow> y \<le> n"
proof -
  assume hyp: "x \<le> n"
  have "y = n - x" using assms by simp
  also have "... \<le> n" using hyp by (simp add: nat_le_linear)
  finally show ?thesis by simp
qed