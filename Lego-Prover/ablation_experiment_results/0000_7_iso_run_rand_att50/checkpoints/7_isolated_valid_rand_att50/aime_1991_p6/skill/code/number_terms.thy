lemma number_terms:
  fixes n x :: nat
  assumes "x + (73 - x) = 73"
  shows "x = x"
proof -
  have "x + (73 - x) = 73" using assms by simp
  then have "73 = 73" by simp
  thus "x = x" by (simp add: eq_reflection)
qed