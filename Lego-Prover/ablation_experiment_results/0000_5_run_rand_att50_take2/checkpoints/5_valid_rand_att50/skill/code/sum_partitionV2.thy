lemma sum_partition:
  fixes n :: nat
  fixes x y a b c :: real
  assumes "x + y = n"
  shows "x * a + y * b = c \<Longrightarrow> (x + y) * a + y * (b - a) = c"
proof -
  assume hyp: "x * a + y * b = c"
  have "(x + y) * a + y * (b - a) = (x + y) * a + y * b - y * a"
    by (simp add: algebra_simps)
  also have "... = (x + y) * a + (c - x * a) - y * a"
    using hyp by (simp add: algebra_simps)
  also have "... = (x + y) * a - y * a + c - x * a"
    by (simp add: algebra_simps)
  also have "... = (x + y - y) * a + c - x * a"
    by (simp add: algebra_simps)
  also have "... = c"
    by (simp add: algebra_simps)
  finally show ?thesis
    by simp
qed