lemma term_distribution:
  fixes n x :: nat
  assumes "x = 35"
  shows "38 = 73 - x"
proof -
  have "73 - x = 73 - 35" using assms by simp
  also have "... = 38" by simp
  finally show ?thesis by simp
qed